import 'package:angkotkita/main.dart';
import 'package:flutter/material.dart';

class testLoginPage extends StatefulWidget {
  const testLoginPage({super.key});

  @override
  State<testLoginPage> createState() => _testLoginPageState();
}

class _testLoginPageState extends State<testLoginPage> {
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
                padding: EdgeInsets.symmetric(vertical: 100),
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
                        fontSize: 30
                      ),
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
                    buildTextFieldRow('Mobile Number', '+62 895-0399-2656',
                        _mobileController),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.white,
        items: [
          buildNavBarItem(Icons.home, 'Home', 0),
          buildNavBarItem(Icons.attach_money, 'Money', 1),
          buildNavBarItem(Icons.route, 'Route', 2),
          buildNavBarItem(Icons.account_circle, 'Account', 3),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem buildNavBarItem(
      IconData icon, String label, int index) {
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
