import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/registerPage.dart';
import 'package:flutter/material.dart';

class onLoginPage extends StatefulWidget {
  const onLoginPage({super.key});

  @override
  State<onLoginPage> createState() => _onLoginPageState();
}

class _onLoginPageState extends State<onLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 60,
              ),
              child: Column(
                children: [
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'LexendDeca',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Sign In to continue',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'LexendDeca',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Image of couple
                  Image.asset(
                    'assets/images/backgroundCouple.png',
                    height: 230,
                  ),
                  // Background Box
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.3),
                          Colors.white.withOpacity(0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              // Column to Wrap Textfield and the Label
                              Column(
                                children: [
                                  // Label Email
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
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
                                  // Email TextField
                                  TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: Colors.blue.shade800,
                                    decoration: InputDecoration(
                                      hintText: 'Enter your email',
                                      hintStyle: TextStyle(
                                        color: bgColor.withOpacity(0.5),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: bgColor.withOpacity(0.4),
                                            width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                          left: 15, top: 10, bottom: 10),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      // suffixIcon: Icon(
                                      //   Icons.email,
                                      //   color: Colors.blue,
                                      // ),
                                    ),
                                  ),
                                  // Spacebar
                                  SizedBox(height: 15),
                                  // Label Password
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'LexendDeca',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Spacebar
                                  SizedBox(height: 10),
                                  // Password TextField with Toggle Visibility
                                  PasswordField(),
                                ],
                              ),

                              // Spacebar
                              SizedBox(height: 16.0),

                              // Forgot Password Text
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Handle the "Forgot Password?" tap
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontFamily: 'LexendDeca',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // Spacebar
                              SizedBox(
                                height: 35,
                              ),
                              // Login Button
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 142,
                                      vertical: 10,
                                    ),
                                    primary: Colors.blue.shade800,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'LexendDeca',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        // Both Sign In Button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Google Button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 8),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/googleVector.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Login with Google',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'ProductSans',
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Spacebar
                            SizedBox(
                              width: 20,
                            ),
                            // Facebook Button
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade700,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/facebook.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Login with Facebook',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'ProductSans',
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Text 'Don't have an Account'
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'LexendDeca',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle the "Create new account" tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => registerPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                            color: Colors.amber,
                            fontFamily: 'LexendDeca',
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue.shade800,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        hintStyle: TextStyle(
          color: bgColor.withOpacity(0.5),
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: bgColor.withOpacity(0.4), width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}
