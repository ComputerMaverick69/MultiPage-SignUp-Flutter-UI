
import 'package:flutter/material.dart';
import 'package:signupui/constants/strings.dart';
import 'package:signupui/screens/sign_up_page.dart';
import 'package:signupui/screens/password_page.dart';
import 'package:signupui/screens/email_page.dart';


void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    signUpPage: (context) => SignUpPage(),
    passwordPage: (context) => PasswordPage(),
    emailPage: (context) => EmailPage()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      home: SignUpPage(),
    );
  }
}
