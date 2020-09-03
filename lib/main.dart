import 'package:flutter/material.dart';
import 'package:signupui/screens/4th_page.dart';

void main() => runApp(SignUp());

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {FourthPage.id: (context) => FourthPage()}, home: FourthPage());
  }
}
