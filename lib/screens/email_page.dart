import 'package:flutter/material.dart';

void main() => runApp(EmailPage());

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF2F5FA),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Find your event neighbors',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40.0,
                  color: Color(0xFF172279),
                ),
              ),
              SizedBox(height: 30.0),
              Image(
                image: AssetImage('assets/images/signup.png'),
                semanticLabel: 'Dash mascot',
              ),
              SizedBox(height: 40.0),
              Text(
                'And your email?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF172279),
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.indigo,
                      width: 3,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    textColor: Colors.black,
                    onPressed: null,
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.deepPurple.shade800,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [new BoxShadow(
                          color: Colors.grey[350],
                          blurRadius: 20.0,
                        ),]

                    ),
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey[300],
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.deepPurple.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}
