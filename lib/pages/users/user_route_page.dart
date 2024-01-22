import 'dart:convert';

import 'package:angkotkita/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserRoutePage extends StatefulWidget {
  const UserRoutePage({Key? key}) : super(key: key);

  @override
  State<UserRoutePage> createState() => _UserRoutePageState();
}

class _UserRoutePageState extends State<UserRoutePage> {
  List<Map<String, String>> addresses = [];
  List<Map<String, String>> filteredAddresses = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  // search query
  void filterAddresses(String query) {
    if (query.isEmpty) {
      setState(() {
        // If the query is empty, display all addresses
        filteredAddresses = List.from(addresses);
      });
    } else {
      setState(() {
        // Otherwise, filter addresses based on the user input
        filteredAddresses = addresses.where((address) {
          String concatenatedText =
              "${address['alamat']} ${address['trayek']} ${address['jalur']}";
          return _containsIgnoreCase(concatenatedText, query);
        }).toList();
      });
    }
  }

  bool _containsIgnoreCase(String? text, String query) {
    return text?.toLowerCase().contains(query.toLowerCase()) ?? false;
  }

  Future<void> fetchData() async {
    // get data from API 
    final response = await http.get(Uri.parse(
        'https://script.googleusercontent.com/macros/echo?user_content_key=4L8oOLK--0J8vWc4SQK_2dOtmU1hQrzSFSqbk2VVO5Zom96eqALCofy6JEumo7JbqqIKbroVu8xa6MiwGiIXj1tCIBQ2J4IRm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnLT3TZKdAerlNT4-zJPD2_Lb-72T3LKo9_9ONezByB1UF7QUgdFd1WposJFaq2oMA6Jdvilbh_3q5H8xr6bT71MtMsDTQmNFSNz9Jw9Md8uu&lib=MMCczYl0a-TDyef2SR8nJub3GWsEnYdVl'));

    if (response.statusCode == 200) {
      print(response.body); // Tambahkan ini untuk melihat respons di konsol

      final List<dynamic> data = json.decode(response.body);

      setState(() {
        addresses = data.map((dynamic item) {
          if (item is Map<String, dynamic>) {
            return {
              'jalur': item['Jalur']?.toString() ?? '',
              'trayek': item['Trayek']?.toString() ?? '',
              'alamat': item['Dari Terminal Arjosari']?.toString() ?? '',
            };
          } else if (item is String) {
            return {
              'jalur': '',
              'trayek': '',
              'alamat': item,
            };
          } else {
            return {
              'jalur': '',
              'trayek': '',
              'alamat': '',
            };
          }
        }).toList();
      });
    } else {
      throw Exception('Failed to load addresses');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // container to replace appbar function (more wide)
          Container(
            color: bgColor,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 55, bottom: 10),
                  // Container for background search Textfield
              child: Container(
                height: 40,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                // SEARCH TEXT FIELD 
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 2),
                    iconColor: bgColor,
                    prefixIcon: searchController.text.isNotEmpty
                        ? GestureDetector(
                            onTap: () {
                              searchController.clear();
                              filterAddresses('');
                            },
                            child: Icon(
                              Icons.clear,
                              color: bgColor,
                            ),
                          )
                        : null,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        filterAddresses(searchController.text);
                      },
                      child: Icon(
                        CupertinoIcons.search,
                      ),
                    ),
                    hintText: 'Search routes here',
                    hintStyle: TextStyle(
                      color: bgColor.withOpacity(0.5),
                      // fontSize:
                    ),
                  ),
                  onChanged: (String value) {
                    filterAddresses(value);
                  },
                  controller: searchController,
                  style: TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 17,
                  ),
                  cursorColor: bgColor,
                ),
              ),
            ),
          ),
          
          filteredAddresses.isEmpty && searchController.text.isNotEmpty
              ? Container(
                  // Display a message or widget indicating no results found
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No results found',
                          style: TextStyle(
                            color: Colors.red[400],
                            fontSize: 25,
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Icon(
                      CupertinoIcons.xmark_circle,
                      color: Colors.red[400],
                      size: 150,
                    ),
                  ]),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: filteredAddresses.isNotEmpty
                        ? filteredAddresses.length
                        : addresses.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _showFullAddress(
                              context,
                              filteredAddresses.isNotEmpty
                                  ? filteredAddresses[index]
                                  : addresses[index]);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: bgColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Jalur: ${filteredAddresses.isNotEmpty ? filteredAddresses[index]['jalur'] : addresses[index]['jalur']}',
                                    style: TextStyle(
                                      color: Colors.amber[700],
                                      fontSize: 14.0,
                                      fontFamily: 'LexendDeca',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Trayek: ${filteredAddresses.isNotEmpty ? filteredAddresses[index]['trayek'] : addresses[index]['trayek']}',
                                style: TextStyle(
                                  color: bgColor,
                                  fontSize: 14.0,
                                  fontFamily: 'LexendDeca',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                filteredAddresses.isNotEmpty
                                    ? filteredAddresses[index]['alamat']!
                                    : addresses[index]['alamat']!,
                                style: TextStyle(
                                  color: bgColor,
                                  fontSize: 16.0,
                                  fontFamily: 'LexendDeca',
                                  fontWeight: FontWeight.w200,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }

  void _showFullAddress(BuildContext context, Map<String, String> fullAddress) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Jalur Lengkap',
            style: TextStyle(
              color: bgColor,
              fontFamily: 'LexendDeca',
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jalur: ${fullAddress['jalur']}',
                  style: TextStyle(
                    color: bgColor,
                    fontFamily: 'LexendDeca',
                  ),
                ),
                Text(
                  'Trayek: ${fullAddress['trayek']}',
                  style: TextStyle(
                    color: bgColor,
                    fontFamily: 'LexendDeca',
                  ),
                ),
                Text(
                  fullAddress['alamat']!,
                  style: TextStyle(
                    color: bgColor,
                    fontFamily: 'LexendDeca',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Tutup',
                style: TextStyle(
                  color: bgColor,
                  fontFamily: 'LexendDeca',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}