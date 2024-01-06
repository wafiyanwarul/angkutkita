import 'package:angkotkita/features/user_auth/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:angkotkita/global/command/toast.dart';
import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/accountConfirmPage.dart';
import 'package:angkotkita/pages/onLoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  bool _obscureText = true;
  bool _isSignUp = false;

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'LexendDeca',
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w100,
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
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            // Column to Wrap Textfield and the Label
                            Column(
                              children: [
                                // Label Name
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name',
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
                                // Name TextField
                                TextField(
                                  controller: _nameController,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.blue.shade800,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your name',
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
                                  ),
                                ),
                                // Spacebar
                                SizedBox(height: 15),
                                // Label Email
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  controller: _emailController,
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
                                  ),
                                ),
                                // Spacebar
                                SizedBox(height: 15),
                                // Label Password
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                TextField(
                                  controller: _passwordController,
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
                                // Spacebar
                                SizedBox(height: 15),
                                // Label Password
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Confirm Password',
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
                                // Confirm Password TextField with Toggle Visibility
                                TextField(
                                  cursorColor: Colors.blue.shade800,
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    hintText: 'Confirm your password',
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
                              ],
                            ),

                            // Spacebar
                            SizedBox(height: 16.0),

                            // Spacebar
                            SizedBox(
                              height: 35,
                            ),
                            // Create Account Button
                            Container(
                              child: InkWell(
                                onTap: () {
                                  _signUp();
                                  showToast(
                                    message: 'User is successfully created',
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade800,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: _isSignUp
                                        ? CircularProgressIndicator(
                                            color: Colors.blue)
                                        : Text(
                                            'Create Account',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: 'LexendDeca',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text already have an account
                    Text(
                      'Already have account? ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'LexendDeca',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    // Text with gesture "Sign In"
                    GestureDetector(
                      onTap: () {
                        // Handle the "Sign In" tap
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => onLoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
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
        ],
      ),
    );
  }

  void _signUp() async {
    setState(() {
      _isSignUp = true;
    });

    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      _isSignUp = false;
    });

    if (user != null) {
      showToast(message: 'User is successfully created');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => accountConfirmPage(),
        ),
      );
    } else {
      showToast(message: 'Some Error happened');
    }
  }
}
