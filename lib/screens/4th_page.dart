import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FourthPage extends StatelessWidget {
  static const String id = 'FourthPage';
  final Widget svg =
      SvgPicture.asset('assets/images/friends.svg', semanticsLabel: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F5FA),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Attend the exam',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple.shade800,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'together',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple.shade800,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 150,
                  child: svg,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 30, right: 30),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '   create a password',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.deepPurple.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    color: Colors.blue.shade800, width: 2.5),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))))),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '   Your password must be',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.deepPurple.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '   Atleast 7 characters',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.deepPurple.shade800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '   Atleast 1 number',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.deepPurple.shade800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '   Atleast 1 upper case',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.deepPurple.shade800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.deepPurple.shade800,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {},
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 0.01,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            height: 40,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              color: Colors.white,
                              onPressed: () {},
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.deepPurple.shade800,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
