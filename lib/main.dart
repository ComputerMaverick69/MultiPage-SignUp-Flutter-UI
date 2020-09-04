import 'package:flutter/material.dart';
import 'package:signupui/constants/strings.dart';
import 'package:signupui/screens/email_page.dart';
import 'package:signupui/screens/password_page.dart';
import 'package:signupui/screens/name_page.dart';
import 'package:signupui/screens/sign_up_page.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    signUpPage: (context) => SignUpPage(),
    passwordPage: (context) => PasswordPage(),
    emailPage: (context) => EmailPage(),
    namePage: (context) => NamePage()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: signUpPage, routes: routes);
  }
}
