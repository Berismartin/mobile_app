import 'package:flutter/material.dart';
import 'package:mobile_app/dashboard.dart';
 
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [ 
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/bg.png'), 
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
                horizontal: 20.0, vertical: 90.0),  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo.png',
                        height: 80),  
                    Image.asset('assets/bars.png',
                        height: 80),  
                  ],
                ),
                SizedBox(height: 60), 
                Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20), 
                CustomTextField(
                  hintText: 'Name',
                  icon: Icons.person,
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
                CustomTextField(
                  hintText: 'Confirm Password',
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
                      child: Text('SIGN UP'),
                    ),
                  ),
                ),
                SizedBox(height: 20), 
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Login Up',
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
        hintStyle: TextStyle(color: Color(0xFFFFC122)), 
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
