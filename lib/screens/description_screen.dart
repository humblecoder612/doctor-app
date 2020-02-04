import "package:flutter/material.dart";

import './demo_speech.dart';

class DescriptionScreen extends StatelessWidget {
  static const routeName = '/description-screen';
  // final String image = ledge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/mait_logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 30.0),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(5.0, 5.0),
                            blurRadius: 5.0)
                      ]),
                  margin: EdgeInsets.all(48.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/mait_logo.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              )),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "How will you do?",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Lorem ipsuim is simply dummy text of the \nprinting and typesetting industry.\nLorem ipsum has been the",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 14.0),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                width: double.infinity,
                child: RaisedButton(
                  padding: const EdgeInsets.all(16.0),
                  textColor: Colors.white,
                  color: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(DemoSpeech.routeName);
                  },
                  child: Text(
                    "Get Started",
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
            ],
          )
        ],
      ),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Description'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Get Started'),
//           color : Theme.of(context).primaryColor,
//           textColor: Colors.white,
//           padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//           splashColor: Theme.of(context).accentColor,
//           onPressed: () {
//             Navigator.of(context).pushNamed(MainScreen.routeName);
//           },
//         ),
//       ),
//     );
//   }
// }
