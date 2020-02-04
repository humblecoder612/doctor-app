import "package:flutter/material.dart";

class OutputScreen extends StatelessWidget {
  static const routeName = '/output-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
      ),
      body: Center(
        child: Text('Output'),
      ),
    );
  }
}
