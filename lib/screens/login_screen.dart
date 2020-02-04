import 'package:doctor_prescriptions/screens/demo_speech.dart';
import 'package:flutter/material.dart';

import '../widgets/radio_button.dart';
import '../animation/fade_animation.dart';
import './patient_report_screen.dart';
import './description_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _selectedButton = 0;

  callback(int updatedButton) {
    setState(() {
      _selectedButton = updatedButton;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(right: 30, top: 20),
              child: Image.asset(
                'assets/images/mait_logo.png',
                fit: BoxFit.cover,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.title.color,
                          fontSize: 40,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.title.color,
                          fontSize: 18,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        // Colors.orange[900],
                        // Colors.orange[800],
                        // Colors.orange[400]
                        Colors.red[900],
                        Colors.red[300],
                        Colors.red[100]
                      ],
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 60,
                      ),
                      FadeAnimation(
                          1.4,
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email or Phone number",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                        1.5,
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      FadeAnimation(
                        1.5,
                        Container(
                          height: 130,
                          width: 200,
                          child: Center(
                            child: RadioButton.updateValue(
                                _selectedButton, callback),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      FadeAnimation(
                        1.6,
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Theme.of(context).textTheme.title.color),
                          child: Center(
                            child: FlatButton(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                if (_selectedButton == 1) {
                                  // Navigator.of(context).pushReplacementNamed(
                                  //     DescriptionScreen.routeName);
                                  Navigator.of(context).pushReplacementNamed(
                                      DemoSpeech.routeName);
                                } else if (_selectedButton == 2) {
                                  Navigator.of(context).pushReplacementNamed(
                                      PatientReportScreen.routeName);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(height: 50,),
                      // FadeAnimation(1.7, Text("Continue with social media", style: TextStyle(color: Colors.grey),)),
                      // SizedBox(height: 30,),
                      // Row(
                      //   children: <Widget>[
                      //     Expanded(
                      //       child: FadeAnimation(1.8, Container(
                      //         height: 50,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(50),
                      //           color: Colors.blue
                      //         ),
                      //         child: Center(
                      //           child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      //         ),
                      //       )),
                      //     ),
                      //     SizedBox(width: 30,),
                      //     Expanded(
                      //       child: FadeAnimation(1.9, Container(
                      //         height: 50,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(50),
                      //           color: Colors.black
                      //         ),
                      //         child: Center(
                      //           child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      //         ),
                      //       )),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
