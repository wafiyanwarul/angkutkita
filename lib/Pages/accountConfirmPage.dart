import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/phoneNumRegPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final String userEmail = 'testemail@flutter.com';

class accountConfirmPage extends StatefulWidget {
  const accountConfirmPage({super.key});

  @override
  State<accountConfirmPage> createState() => _accountConfirmPageState();
}

class _accountConfirmPageState extends State<accountConfirmPage> {
  // _accountConfirmPageState({required this.userEmail});

  bool _obscureText = true;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isError = _controller.text.length > 6;
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            backgroundColor: bgColor,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title Account Confirmation
                Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'LexendDeca',
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Confirmation',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'LexendDeca',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.2),
                          Colors.white.withOpacity(0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Label Enter 6 digit code
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter the 6-digit code sent to:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'LexendDeca',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          // Spacebar
                          SizedBox(height: 10),
                          // Label Email
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$userEmail',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'LexendDeca',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          // Spacebar
                          SizedBox(height: 15),
                          // Digit Code TextField with Toggle Visibility
                          TextField(
                            controller: _controller,
                            cursorColor: Colors.blue.shade800,
                            obscureText: _obscureText,
                            onChanged: (value) {
                              setState(() {
                                // Modifikasi logika untuk tidak menampilkan pesan kesalahan saat kurang dari 6 digit
                                isError = value.length > 6;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter 6 code here',
                              hintStyle: TextStyle(
                                color: isError
                                    ? Colors.red.withOpacity(0.5)
                                    : Colors.black.withOpacity(0.5),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: isError
                                      ? Colors.red.withOpacity(0.8)
                                      : Colors.grey.withOpacity(0.4),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                            ),
                          ),
                          if (isError)
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kode terdiri dari 6 digit',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          // Spacebar
                          SizedBox(height: 20),
                          // Confirm Button
                          Container(
                            child: ElevatedButton(
                              onPressed: () {
                                // if else condition (true when 6 code matched, false when 6 code not matched)

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => phoneNumRegPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 130,
                                  vertical: 10,
                                ),
                                primary: Colors.blue.shade800,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'LexendDeca',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          // Spacebar
                          SizedBox(height: 5),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
