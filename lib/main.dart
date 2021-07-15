import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: _FirstLogin(),
  ));
}

//First log in screen that the user will see

class _FirstLogin extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

    deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: deviceHeight(context) * 0.10,
            ),
            Container(
              width: deviceWidth(context) * 0.85,
              height: deviceHeight(context) * 0.055,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Vita is here to guide and help',
                  style: GoogleFonts.workSans(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              width: deviceWidth(context) * 0.48,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'you create a plan',
                  style: GoogleFonts.workSans(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.05,
            ),
            Container(
              height: deviceHeight(context) * 0.40,
              child: Image(
                image: AssetImage('image/vita.png'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.09,
            ),
            Container(
              width: deviceWidth(context) * 0.60,
              height: deviceHeight(context) * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(6, 6, 54, 1)),
                child: Container(
                  width: deviceWidth(context) * 0.35,
                  height: deviceHeight(context) * 0.060,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Create Account',
                      style: GoogleFonts.workSans(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            Container(
              width: deviceWidth(context) * 0.60,
              height: deviceHeight(context) * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(255, 255, 255, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                        color: Color.fromRGBO(6, 6, 54, 1), width: 2.0),
                  ),
                ),
                child: Container(
                  width: deviceWidth(context) * 0.16,
                  height: deviceHeight(context) * 0.060,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.workSans(
                        color: Color.fromRGBO(6, 6, 54, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => _SecondLogin()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Sign in screen that the user will see if they click on the sign in button

class _SecondLogin extends StatefulWidget {
  @override
  _SecondLoginState createState() => _SecondLoginState();
}

class _SecondLoginState extends State<_SecondLogin> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

    deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: deviceHeight(context) * 0.15,
            ),
            Container(
              width: deviceWidth(context) * 0.65,
              height: deviceHeight(context) * 0.075,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Welcome Back!',
                  style: GoogleFonts.workSans(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.010,
            ),
            Container(
              width: deviceWidth(context) * 0.76,
              height: deviceHeight(context) * 0.050,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Enter your username and password',
                  style: GoogleFonts.workSans(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.030,
            ),
            Container(
              width: deviceWidth(context) * 0.76,
              height: deviceHeight(context) * 0.050,
              child: TextField(
                style: GoogleFonts.workSans(color: Colors.black),
                controller: nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F9F9),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF939393)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF939393)),
                  ),
                  labelText: 'User Name',
                  labelStyle: TextStyle(fontSize: 16, color: Color(0xFF939393)),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.025,
            ),
            Container(
              width: deviceWidth(context) * 0.76,
              height: deviceHeight(context) * 0.050,
              child: TextField(
                style: GoogleFonts.workSans(color: Colors.black),
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F9F9),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF939393)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF939393)),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 16, color: Color(0xFF939393)),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            Container(
              width: deviceWidth(context) * 0.79,
              child: Row(
                children: <Widget>[
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color.fromRGBO(6, 6, 54, 1),
                    ),
                    child: Checkbox(
                      checkColor: Colors.white,
                      activeColor: Color.fromRGBO(6, 6, 54, 1),
                      value: checkedValue,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            checkedValue = value!;
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    width: deviceWidth(context) * 0.245,
                    height: deviceHeight(context) * 0.050,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Remember Me",
                        style: GoogleFonts.workSans(
                          color: Color.fromRGBO(86, 86, 86, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            Container(
              width: deviceWidth(context) * 0.55,
              height: deviceHeight(context) * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(6, 6, 54, 1)),
                child: Container(
                  width: deviceWidth(context) * 0.15,
                  height: deviceHeight(context) * 0.060,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.workSans(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            Container(
              width: deviceWidth(context) * 0.5,
              //height: deviceHeight(context) * 0.1,
              child: Column(
                children: <Widget>[
                  TextButton(
                    child: Container(
                      width: deviceWidth(context) * 0.35,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.workSans(
                            color: Color.fromRGBO(6, 6, 54, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => _ForgetPassword()));
                      //signup screen
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.04,
            ),
            Container(
              width: deviceWidth(context) * 0.50,
              height: deviceHeight(context) * 0.033,
              //height: deviceHeight(context) * 0.060,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Don't have an account?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.workSans(
                    color: Color.fromRGBO(86, 86, 86, 1),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              width: deviceWidth(context) * 0.5,
              //height: deviceHeight(context) * 0.1,
              child: Column(
                children: <Widget>[
                  TextButton(
                    child: Container(
                      width: deviceWidth(context) * 0.35,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Create an account?',
                          style: GoogleFonts.workSans(
                            color: Color.fromRGBO(6, 6, 54, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Forgot Password screen that the user will see if they click on the forgot password button

class _ForgetPassword extends StatelessWidget {
  //TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

    deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: deviceHeight(context) * 0.26,
            ),
            Container(
              width: deviceWidth(context) * 0.65,
              height: deviceHeight(context) * 0.075,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Forgot Password',
                  style: GoogleFonts.workSans(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: deviceHeight(context) * 0.020),
            Container(
              width: deviceWidth(context) * 0.51,
              height: deviceHeight(context) * 0.035,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Confirm your email',
                  style: GoogleFonts.workSans(
                    color: Color.fromRGBO(99, 99, 99, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.030,
            ),
            Container(
              width: deviceWidth(context) * 0.76,
              height: deviceHeight(context) * 0.050,
              child: TextField(
                style: GoogleFonts.workSans(color: Colors.black),
                controller: emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F9F9),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF939393)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Color(0xFF939393)),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 16, color: Color(0xFF939393)),
                ),
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            Container(
              width: deviceWidth(context) * 0.55,
              height: deviceHeight(context) * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(6, 6, 54, 1)),
                child: Container(
                  width: deviceWidth(context) * 0.37,
                  height: deviceHeight(context) * 0.060,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      'Reset Password',
                      style: GoogleFonts.workSans(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  print(emailController.text);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => _SecondLogin()));
                },
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.03,
            ),
            Container(
              width: deviceWidth(context) * 0.65,
              //height: deviceHeight(context) * 0.1,
              child: Column(
                children: <Widget>[
                  TextButton(
                    child: Container(
                      width: deviceWidth(context) * 0.50,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Already have an account?',
                          style: GoogleFonts.workSans(
                            color: Color.fromRGBO(6, 6, 54, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => _SecondLogin()));
                      //signup screen
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
