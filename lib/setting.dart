// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: _Setting(),
//   ));
// }
//
// //First log in screen that the user will see
//
// class _Setting extends StatelessWidget {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   bool checkedValue = false;
//   @override
//   Widget build(BuildContext context) {
//     deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
//
//     deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             // SizedBox(
//             //   height: deviceHeight(context) * 0.10,
//             // ),
//             Container(
//               width: deviceWidth(context) * 0.5,
//               //height: deviceHeight(context) * 0.1,
//               child: Column(
//                 children: <Widget>[
//                   TextButton(
//                     child: Container(
//                       //width: deviceWidth(context) * 0.35,
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text(
//                           'Privacy Information',
//                           style: GoogleFonts.workSans(
//                             color: Color.fromRGBO(6, 6, 54, 1),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => _ForgetPassword()));
//                       //signup screen
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: deviceWidth(context) * 0.5,
//               //height: deviceHeight(context) * 0.1,
//               child: Column(
//                 children: <Widget>[
//                   TextButton(
//                     child: Container(
//                       //width: deviceWidth(context) * 0.35,
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text(
//                           'Reminders Settings',
//                           style: GoogleFonts.workSans(
//                             color: Color.fromRGBO(6, 6, 54, 1),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => _ForgetPassword()));
//                       //signup screen
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: deviceWidth(context) * 0.5,
//               //height: deviceHeight(context) * 0.1,
//               child: Column(
//                 children: <Widget>[
//                   TextButton(
//                     child: Container(
//                       //width: deviceWidth(context) * 0.35,
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text(
//                           'Display Settings',
//                           style: GoogleFonts.workSans(
//                             color: Color.fromRGBO(6, 6, 54, 1),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => _ForgetPassword()));
//                       //signup screen
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: deviceWidth(context) * 0.5,
//               //height: deviceHeight(context) * 0.1,
//               child: Column(
//                 children: <Widget>[
//                   TextButton(
//                     child: Container(
//                       //width: deviceWidth(context) * 0.35,
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text(
//                           'About',
//                           style: GoogleFonts.workSans(
//                             color: Color.fromRGBO(6, 6, 54, 1),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => _ForgetPassword()));
//                       //signup screen
//                     },
//                   ),
//                 ],
//               ),
//             ),
//
//             Container(
//               //width: deviceWidth(context) * 0.48,
//               child: FittedBox(
//                 fit: BoxFit.contain,
//                 child: Text(
//                   'Profile Settings',
//                   style: GoogleFonts.workSans(
//                     color: Color.fromRGBO(0, 0, 0, 1),
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               width: deviceWidth(context) * 0.5,
//               //height: deviceHeight(context) * 0.1,
//               child: Column(
//                 children: <Widget>[
//                   TextButton(
//                     child: Container(
//                       //width: deviceWidth(context) * 0.35,
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text(
//                           'Profile Information',
//                           style: GoogleFonts.workSans(
//                             color: Color.fromRGBO(6, 6, 54, 1),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => _ForgetPassword()));
//                       //signup screen
//                     },
//                   ),
//                 ],
//               ),
//             ),
//
//             Container(
//               width: deviceWidth(context) * 0.5,
//               //height: deviceHeight(context) * 0.1,
//               child: Column(
//                 children: <Widget>[
//                   TextButton(
//                     child: Container(
//                       //width: deviceWidth(context) * 0.35,
//                       child: FittedBox(
//                         fit: BoxFit.contain,
//                         child: Text(
//                           'Log Out',
//                           style: GoogleFonts.workSans(
//                             color: Color.fromRGBO(6, 6, 54, 1),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => _ForgetPassword()));
//                       //signup screen
//                     },
//                   ),
//                 ],
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
