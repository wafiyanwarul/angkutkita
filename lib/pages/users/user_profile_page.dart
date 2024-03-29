import 'package:angkotkita/global/command/toast.dart';
import 'package:angkotkita/main.dart';
import 'package:angkotkita/pages/onLogin_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int _selectedIndex = 0;
  bool _isEditing = false;

  TextEditingController _namaController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();

  String _nama = '';
  String _email = '';
  String _mobileNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            color: bgColor,
            padding: EdgeInsets.symmetric(vertical: 30),
          ),
          Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 40, bottom: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: bgColor,
                          fontFamily: 'LexendDeca',
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFF27374D),
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/me.png'),
                      ),
                    ),
                    SizedBox(height: 20),
                    buildTextFieldRow(
                        'Nama', 'Wafiy Anwarul Hikam', _namaController),
                    buildTextFieldRow('Email', 'wafiyanwarulhikam12@gmail.com',
                        _emailController),
                    buildTextFieldRow('Mobile Number', '+62 881-2288-3344-',
                        _mobileController),
                    SizedBox(
                      height: 20,
                    ),
                    // Button become a driver
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 70),
                      // color: Colors.amber,
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 105,
                                vertical: 10,
                              ),
                              primary: Colors.blue.shade800,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Become a driver',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'LexendDeca',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Button sign out
                          ElevatedButton(
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => onLoginPage(),
                                ),
                              );
                              showToast(message: 'Successfully logged out');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 145,
                                vertical: 10,
                              ),
                              primary: Colors.blue.shade800,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Sign Out',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'LexendDeca',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   // backgroundColor: Colors.white,
      //   items: [
      //     buildNavBarItem(Icons.home, 'Home', 0),
      //     buildNavBarItem(Icons.attach_money, 'Money', 1),
      //     buildNavBarItem(Icons.route, 'Route', 2),
      //     buildNavBarItem(Icons.account_circle, 'Account', 3),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
    );
  }

  BottomNavigationBarItem buildNavBarItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      backgroundColor: bgColor,
      icon: InkWell(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _selectedIndex == index ? Colors.amber : Colors.white,
          ),
          child: Icon(icon, color: Color(0xFF27374D)),
        ),
      ),
      label: label,
    );
  }

  Widget buildTextFieldRow(
      String label, String hint, TextEditingController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: bgColor),
          ),
          SizedBox(height: 5),
          TextFormField(
            controller: controller,
            onChanged: (value) {
              setState(
                () {
                  // Simpan nilai input ke variabel setiap kali ada perubahan
                  if (label == 'Nama') {
                    _nama = value;
                  } else if (label == 'Email') {
                    _email = value;
                  } else if (label == 'Mobile Number') {
                    _mobileNumber = value;
                  }
                },
              );
            },
            readOnly: !_isEditing,
            enabled: _isEditing,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 0),
        ],
      ),
    );
  }
}
