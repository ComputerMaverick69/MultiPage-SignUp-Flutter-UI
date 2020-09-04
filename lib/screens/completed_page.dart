import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:signupui/constants/dimensions.dart';
import 'package:signupui/constants/styles.dart';
import 'package:signupui/widgets/button.dart';

class CompletedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(kpadding),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/images/completed.json'),
                  Text(
                    'Registration \nCompleted',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40.0,
                      color: Color(0xFF172279),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
