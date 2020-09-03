import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  final Widget svg = SvgPicture.asset('assets/friends.svg', semanticsLabel: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F5FA),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Fin",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                      color: Color(0xFF172279),
                    ),
                  ),
                  Text(
                    "Go",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                      color: Color(0xFFFFB7E6),
                    ),
                  ),
                ],
              ),
              Container(
                child: svg,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
