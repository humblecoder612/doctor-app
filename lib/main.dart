import 'package:flutter/material.dart';

import './screens/description_screen.dart';
import './screens/ouput_screen.dart';
import './screens/demo_speech.dart';
import './screens/login_screen.dart';
import './screens/patient_report_screen.dart';
import './screens/edit_prescription_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.red[50],
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.grey[300],
      ),
      home: LoginScreen(),
      routes: {
        PatientReportScreen.routeName: (ctx) => PatientReportScreen(),
        DemoSpeech.routeName: (ctx) => DemoSpeech(),
        OutputScreen.routeName: (ctx) => OutputScreen(),
        DescriptionScreen.routeName: (ctx) => DescriptionScreen(),
        EditPrescriptionScreen.routeName: (ctx) => EditPrescriptionScreen(),
      },
    );
  }
}
