import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/testProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class phoneNumRegPage extends StatefulWidget {
  const phoneNumRegPage({super.key});

  @override
  State<phoneNumRegPage> createState() => _phoneNumRegPageState();
}

class _phoneNumRegPageState extends State<phoneNumRegPage> {
  GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello!',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'LexendDeca',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s getting touch \nwith registering your number',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w100,
                        fontFamily: 'LexendDeca',
                        color: Colors.white,
                      ),
                    ),
                  ],
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
                      // For phone number form (using package intl_phone_number_flutter
                      child: Form(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Label Enter 6 digit code
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'With a valid number you can access reides \ndeliceries, and out other services',
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
                            IntlPhoneField(
                              dropdownTextStyle:
                                  TextStyle(), // Country Code Style
                              focusNode: focusNode,
                              cursorColor: Colors.blue,
                              decoration: InputDecoration(
                                hintText: 'Your phone number',
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: EdgeInsets.only(
                                    left: 30.0, top: 20.0, bottom: 10.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: focusNode.hasFocus
                                        ? Colors.blue
                                        : Colors.white,
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              languageCode: "en",
                              onChanged: (phone) {
                                print(phone.completeNumber);
                              },
                              onCountryChanged: (country) {
                                print('Country changed to: ' + country.name);
                              },
                            ),

                            // Spacebar
                            SizedBox(height: 15),
                            // Submit Button
                            Container(
                              child: ElevatedButton(
                                onPressed: () {
                                  _formKey.currentState?.validate();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => testLoginPage(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 135,
                                    vertical: 10,
                                  ),
                                  primary: Colors.blue.shade800,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Submit',
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
