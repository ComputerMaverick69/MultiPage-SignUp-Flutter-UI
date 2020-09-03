import "package:flutter/material.dart";
import 'package:signupui/constants/colors.dart';
import 'package:signupui/constants/styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    this.onTap,
    this.textColor,
    this.buttonColor,
    this.buttonChildren,
    this.icon,
    Key key,
  }) : super(key: key);
  final Color buttonColor;
  final List<Widget> buttonChildren;
  final Color textColor;
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: secondaryColor.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 20,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: buttonColor,
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buttonChildren,
          ),
        ),
      ),
    );
  }
}
