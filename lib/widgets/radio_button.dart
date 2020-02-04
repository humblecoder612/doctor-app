import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  RadioButton() : super();

  final String title = "Radio Widget Demo";
  int updatedSelectedButton = 0;
  Function(int) callback;

  RadioButton.updateValue(this.updatedSelectedButton, this.callback);

  @override
  RadioButtonState createState() => RadioButtonState();
}

class RadioButtonState extends State<RadioButton> {
  int selectedRadio;
  int selectedRadioTile;

  @override
  void initstate() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  setselectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RadioListTile(
          value: 1,
          groupValue: selectedRadioTile,
          title: Text(
            "Doctor",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onChanged: (val) {
            print("Radio Tile pressed $val");
            setselectedRadioTile(val);
            widget.callback(val);
          },
          activeColor: Colors.red[50],
        ),
        RadioListTile(
          value: 2,
          groupValue: selectedRadioTile,
          title: Text(
            "Patient",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onChanged: (val) {
            print("Radio Tile pressed $val");
            setselectedRadioTile(val);
            widget.callback(val);
          },
          activeColor: Colors.red[50],
        ),
      ],
    );
  }
}
