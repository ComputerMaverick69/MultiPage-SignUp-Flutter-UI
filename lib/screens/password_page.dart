import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signupui/constants/colors.dart';
import 'package:signupui/constants/dimensions.dart';
import 'package:signupui/constants/strings.dart';
import 'package:signupui/constants/styles.dart';
import 'package:signupui/widgets/button.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool chars = false, num = false, upp = false;

  final Widget svg =
      SvgPicture.asset('assets/images/together.svg', semanticsLabel: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F5FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                passwordPageHeading,
                style: kTextH1Style.copyWith(fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: ksignupPagePadding + 10,
              ),
              Container(
                height: 200,
                child: svg,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create a password',
                      style: TextStyle(
                        fontSize: 20,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                            color: secondaryColor.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        onChanged: (text) {
                          if (text.contains(new RegExp(r'[A-Z]'))) {
                            upp = true;
                          } else {
                            upp = false;
                          }
                          if (text.contains(new RegExp(r'[0-9]'))) {
                            num = true;
                          } else {
                            num = false;
                          }

                          if (text.length > 6) {
                            chars = true;
                          } else {
                            chars = false;
                          }
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 2.5,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: kpasswordPagePadding + 20,
                    ),
                    Text(
                      'Your password must be',
                      style: TextStyle(
                        fontSize: 15,
                        color: secondaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: kpasswordPagePadding,
                    ),
                    Row(
                      children: [
                        chars
                            ? Icon(
                                Icons.done,
                                color: Colors.green,
                              )
                            : Icon(Icons.close, color: Colors.red),
                        Text(
                          'At least 7 characters ',
                          style: TextStyle(
                            fontSize: 15,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        num
                            ? Icon(
                                Icons.done,
                                color: Colors.green,
                              )
                            : Icon(Icons.close, color: Colors.red),
                        Text(
                          'At least 1 number ',
                          style: TextStyle(
                            fontSize: 15,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        upp
                            ? Icon(
                                Icons.done,
                                color: Colors.green,
                              )
                            : Icon(Icons.close, color: Colors.red),
                        Text(
                          'At least 1 upperCase',
                          style: TextStyle(
                            fontSize: 15,
                            color: secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Back',
                              style: kTextH5Style.copyWith(
                                color: secondaryColor,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        ButtonWidget(
                          buttonChildren: [
                            Text(
                              "Submit",
                              style: kTextH5Style.copyWith(
                                color: secondaryColor,
                              ),
                            )
                          ],
                          buttonColor: Colors.white,
                          onTap: () {
                            Navigator.pushNamed(context, completedPage);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kpasswordPagePadding + 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
