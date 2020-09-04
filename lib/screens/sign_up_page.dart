import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signupui/constants/colors.dart';
import 'package:signupui/constants/dimensions.dart';
import 'package:signupui/constants/strings.dart';
import 'package:signupui/constants/styles.dart';
import 'package:signupui/widgets/button.dart';
import '../constants/strings.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ksignupPagePadding),
            child: Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: ksignupPagePadding + 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Fin", style: kTextH1Style),
                        Text(
                          "Go",
                          style: kTextH1Style.copyWith(
                            color: Color(0xFFFFB7E6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: ksignupPagePadding),
                    child: Text(
                      signUpPageScreenOneString,
                      style: kTextH1Style.copyWith(fontSize: 40.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(ksignupPagePadding),
                    child: Container(
                      child: Image.asset("assets/images/friends.png"),
                    ),
                  ),
                  SizedBox(
                    height: ksignupPagePadding,
                  ),
                  ButtonWidget(
                    onTap: () {},
                    buttonColor: googleButtonColor,
                    buttonChildren: [
                      Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "Sign up with Google",
                        style: kTextH5Style,
                      )
                    ],
                  ),
                  SizedBox(
                    height: ksignupPagePadding,
                  ),
                  ButtonWidget(
                    onTap: () {
                      Navigator.pushNamed(context, namePage);
                    },
                    buttonColor: emailButtonColor,
                    buttonChildren: [
                      Text(
                        "Sign up with email",
                        style: kTextH5Style.copyWith(color: secondaryColor),
                      )
                    ],
                    textColor: secondaryColor,
                  ),
                  SizedBox(
                    height: ksignupPagePadding,
                  ),
                  TermsAndConditions(),
                  SizedBox(
                    height: ksignupPagePadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: kTextH5Style.copyWith(
                          color: secondaryColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, namePage);
                        },
                        child: Text(
                          " Sign In",
                          style: kTextH5Style.copyWith(
                            color: secondaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: "By signing up you accept the",
          style: kTextH6Style,
        ),
        TextSpan(
          text: " Terms of \nServices",
          style: kTextH6Style.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        TextSpan(
          text: " and",
          style: kTextH6Style,
        ),
        TextSpan(
          text: " Privacy policy",
          style: kTextH6Style.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ]),
    );
  }
}
