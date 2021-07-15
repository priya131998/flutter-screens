import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: _SampleSetting(),
  ));
}

//First log in screen that the user will see

class _SampleSetting extends StatelessWidget {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

    deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: deviceHeight(context) * 0.2,
            ),
            Container(
              // color: Colors.red,
              width: deviceWidth(context) * 1,
              //height: deviceHeight(context) * 0.12,
              child: ListTile(
                title: Text(
                  'Profile Information',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.workSans(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 50,
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              width: deviceWidth(context) * 1,
              //height: deviceHeight(context) * 0.12,
              child: ListTile(
                title: Text(
                  'Reminders Settings',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.workSans(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 50,
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              width: deviceWidth(context) * 1,
              //height: deviceHeight(context) * 0.12,
              child: ListTile(
                title: Text(
                  'Display Settings',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.workSans(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 50,
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              width: deviceWidth(context) * 1,
              //height: deviceHeight(context) * 0.2,
              child: ListTile(
                title: Text(
                  'About',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.workSans(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 50,
                ),
                // TextButton(
                //   child: Container(
                //     width: deviceWidth(context) * 0.5,
                //     // child: FittedBox(
                //     //   fit: BoxFit.contain,
                //     child: Text(
                //       'About',
                //       style: GoogleFonts.workSans(
                //         color: Color.fromRGBO(6, 6, 54, 1),
                //         fontWeight: FontWeight.w600,
                //         //),
                //       ),
                //
                //  ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingPageUi()));
                },
              ),
              // onPressed: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => SettingPageUi()));
              //   //signup screen
              // },
            ),
            Container(
              //width: deviceWidth(context) * 0.48,
              child: ListTile(
                title: Text(
                  'Profile Settings',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.workSans(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              width: deviceWidth(context) * 1,
              //height: deviceHeight(context) * 0.12,
              child: ListTile(
                title: Text(
                  'Profile Information',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.workSans(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 50,
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              width: deviceWidth(context) * 1,
              //height: deviceHeight(context) * 0.12,
              child: ListTile(
                title: Text(
                  'Log Out',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.workSans(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
      // ],
    );
    //),
    // );
  }
}

class SettingPageUi extends StatefulWidget {
  @override
  _SettingPageUIState createState() => _SettingPageUIState();
}

class _SettingPageUIState extends State<SettingPageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.black87
              //creation of about appbar with back button
              ),
          backgroundColor: Colors.white,
          centerTitle: true,
          //ensures title is centered within appbar
          title: Text('About',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: 'WorkSans',
                fontWeight: FontWeight.bold,
              )),
        ),
        body: Container(
            padding: EdgeInsets.all(50),
            //creates a margin for the container on each side
            child: ListView(
                //Creates list of scrollable items
                children: [
                  SizedBox(
                      child: Text(
                    'Our Story',
                    //creates text for 'our story' header
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'WorkSans',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                  )),
                  SizedBox(height: 16),
                  Column(
                      //creates vertical array of text widgets
                      children: [
                        Text(
                          'Traits AI is a conversational AI company that helps you connect with your clients, customers, and audience in new ways using AI avatars, voice assistants, and chatbots.  We work closely with you to create a persona that accurately reflects your online presence.  It can do things like customer service, lead generation, lead qualification, sales processing, answer common questions, tell people about important announcements, or just keep your fans motivated, engaged or even just company. ',
                          //Text for the 'our story' section, found on TraitsAI website
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ), //creates space between paragraphs
                        Text(
                          'Each AI avatar serves as a way for your online audience to form an “instant-answers” community around a common interest in your channel’s topic.  This is done using “Hybrid-Intelligence”, where your fans help provide answers for the AI when it gets stuck on a question.  And in return for their contributions, your fans can earn cryptocurrency token rewards that have real-world value.  If you’d like to learn more then enter your email to join the newsletter.',
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 16,
                          ),
                        )
                      ])
                ])));
  }
}
