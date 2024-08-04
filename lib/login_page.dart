import 'package:flutter/material.dart';
import 'package:mobile_app/dashboard.dart';
import 'login_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.white.withOpacity(0.9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 90.0), // Adjusted vertical padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo.png',
                        height: 80), // Change this to your logo
                    Image.asset('assets/bars.png',
                        height: 80), // Change this to your logo
                  ],
                ),
                SizedBox(height: 60),
                Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),
                CustomTextField(
                  hintText: 'Phone Number',
                  icon: Icons.phone,
                ),
                SizedBox(height: 10),
                CustomTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),

                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Text('Remember me',
                            style: TextStyle(color: Color(0xFFFFC122))),
                      ],
                    ),
                    Text('Forgot password?',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 20), 
                Center(
                  child: SizedBox(
                    width: double.infinity, 
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>   DashboardPage()),
                          );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFC122),  
                        textStyle: TextStyle(color: Colors.black), 
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Log In'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Login Text
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Create An Account ? ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'create an account',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  CustomTextField({
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Color(0xFFFFC122)),
        hintStyle: TextStyle(color: Color(0xFFFFC122)), // Added label color
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFFC122)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFFC122)),
        ),
      ),
    );
  }
}
