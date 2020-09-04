import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:signupui/constants/colors.dart';
import 'package:signupui/constants/dimensions.dart';
import 'package:signupui/constants/strings.dart';
import 'package:signupui/constants/styles.dart';
import 'package:signupui/widgets/button.dart';

void main() => runApp(EmailPage());

class EmailPage extends StatelessWidget {
  final Widget svg =
      SvgPicture.asset('assets/images/high_five.svg', semanticsLabel: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F5FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: kpadding + 40,
                ),
                Text(
                  'Find your event neighbors',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40.0,
                    color: Color(0xFF172279),
                  ),
                ),
                SizedBox(height: kpadding + 30),
                Container(
                  height: 200,
                  child: svg,
                ),
                SizedBox(height: kpadding + 30),
                Text(
                  'And your email?',
                  style: TextStyle(
                    fontSize: 20,
                    color: secondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: kpadding - 10),
                TextField(
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
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
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
                          "Next",
                          style: kTextH5Style.copyWith(
                            color: secondaryColor,
                          ),
                        )
                      ],
                      buttonColor: Colors.white,
                      onTap: () {
                        Navigator.pushNamed(context, passwordPage);
                      },
                    ),
                  ],
                ),
                SizedBox(height: kpadding)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
