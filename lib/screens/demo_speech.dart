import 'package:flutter/material.dart';
import 'dart:async';

import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

import '../widgets/prescription_items.dart';
import './edit_prescription_screen.dart';
// import 'package:speech_to_text/speech_recognition_error.dart';

class DemoSpeech extends StatefulWidget {
  static const routeName = '/demo-speech';
  @override
  _DemoSpeechState createState() => _DemoSpeechState();
}

class _DemoSpeechState extends State<DemoSpeech> {
  int counter = 1;

  bool _nameExpanded = false;
  bool _symptomsExpanded = false;
  bool _diagnosisExpanded = false;
  bool _prescriptionExpanded = false;
  bool _adviceExpanded = false;
  bool _expanded = false;

  String _nameWords = '';
  String _symptomsWords = '';
  String _diagnosisWords = '';
  String _prescriptionWords = '';
  String _adviceWords = '';

  List<String> dummy = [];
  List<String> _content = [];
  bool _hasSpeech = false;
  String titleWords = "";
  String lastWords = "";
  // String lastError = "";
  String lastStatus = "";
  final SpeechToText speech = SpeechToText();

  @override
  void initState() {
    super.initState();
    initSpeechState();
  }

  Future<void> initSpeechState() async {
    bool hasSpeech = await speech.initialize(
      // onError: errorListener,
      onStatus: statusListener,
    );

    if (!mounted) return;
    setState(() {
      _hasSpeech = hasSpeech;
    });
  }

  void checkKeyword() {
    if (dummy.isNotEmpty) {
      // for( String item in dummy)
      // {
      // item = item.trim();
      // print(item);
      // print(item.length);
      //   if(item == 'name')
      //   {
      //     print('found');
      //   }
      // }
      if (dummy.last.trim() == 'name') {
        _nameExpanded = _expanded;
        if (counter % 2 == 0) {
          _nameWords = _content.last;
        }
      } else if (dummy.last.trim() == 'symptoms') {
        _symptomsExpanded = _expanded;
        if (counter % 2 == 0) {
          _symptomsWords = _content.last;
        }
      } else if (dummy.last.trim() == 'prescription') {
        _prescriptionExpanded = _expanded;
        if (counter % 2 == 0) {
          _prescriptionWords = _content.last;
        }
      } else if (dummy.last.trim() == 'diagnosis') {
        _diagnosisExpanded = _expanded;
        if (counter % 2 == 0) {
          _diagnosisWords = _content.last;
        }
      } else if (dummy.last.trim() == 'advice') {
        _adviceExpanded = _expanded;
        if (counter % 2 == 0) {
          _adviceWords = _content.last;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speech to Text'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // Navigator.of(context).pushNamed(EditPrescriptionScreen.routeName);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditPrescriptionScreen(
                    name: _nameWords,
                    symptoms: _symptomsWords,
                    diagnosis: _diagnosisWords,
                    advice: _adviceWords,
                    prescription: _prescriptionWords,
                  ),
                ),
              );
            },
          ),
          // Container(
          //   child: FlatButton(
          //     child: Text(
          //       'DONE',
          //       style: TextStyle(
          //         color: Colors.white,
          //       ),
          //     ),
          //     onPressed: () {},
          //   ),
          // )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.red[900], Colors.red[300], Colors.red[100]],
          ),
        ),
        child: Column(
          children: [
            // Expanded(
            //   child: Column(
            //     children: <Widget>[
            //       Center(
            //         child: Text('Recognized Words'),
            //       ),
            //       Center(
            //         child: Text(lastWords),
            //       ),
            //     ],
            //   ),
            // ),

            // Card(
            //   margin: const EdgeInsets.all(10),
            //   child: Column(
            //     children: <Widget>[
            //       ListTile(
            //         title: Text('Name'),
            //         trailing: IconButton(
            //           icon: Icon(_expanded
            //               ? Icons.expand_less
            //               : Icons.expand_more),
            //           onPressed: () {
            //             setState(() {
            //               _expanded = !_expanded;
            //             });
            //           },
            //         ),
            //       ),
            //       if (_expanded)
            //         Container(
            //           padding: const EdgeInsets.all(10),
            //           child: Text(lastWords),
            //         ),
            //     ],
            //   ),
            // ),
            PrescriptionItem(
              lastWords: _nameWords,
              expanded: _nameExpanded,
              title: "Name",
            ),
            PrescriptionItem(
              lastWords: _symptomsWords,
              expanded: _symptomsExpanded,
              title: "Symptoms",
            ),
            PrescriptionItem(
              lastWords: _diagnosisWords,
              expanded: _diagnosisExpanded,
              title: "Diagnosis",
            ),
            PrescriptionItem(
              lastWords: _prescriptionWords,
              expanded: _prescriptionExpanded,
              title: "Prescription",
            ),
            PrescriptionItem(
              lastWords: _adviceWords,
              expanded: _adviceExpanded,
              title: "Advice",
            ),
            // Expanded(
            //   child: Center(
            //     child: Text('Speech recognition available'),
            //   ),
            // ),
            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       FlatButton(
            //         child: Text('Start'),
            //         onPressed: startListening,
            //       ),
            // FlatButton(
            //   child: Text('Stop'),
            //   onPressed: stopListening,
            // ),
            // FlatButton(
            //   child: Text('Cancel'),
            //   onPressed: cancelListening,
            // ),
            // Container(
            //   child: speech.isListening
            //       ? Text("Status : I'm listening...")
            //       : Text('Status : Not listening'),
            // ),
            //     ],
            //   ),
            // ),
            // Expanded(
            //   child: Column(
            //     children: <Widget>[
            //       Center(
            //         child: Text('Error'),
            //       ),
            //       Center(
            //         child: Text(lastError),
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(
            //   child: Center(
            //     child: speech.isListening
            //         ? Text("I'm listening...")
            //         : Text('Not listening'),
            //   ),
            // ),
            // Expanded(
            //   child: Center(
            //     child: dummy.length >= 1
            //         ? Text(dummy[dummy.length - 1])
            //         : Text("nothing"),
            //   ),
            // ),
          ],
        ),
      ),
      // : Center(
      //     child: Text('Speech recognition unavailable',
      //         style:
      //             TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).textTheme.title.color,
        child: speech.isListening
            ? Text(
                '...',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            : Icon(
                Icons.mic,
                color: Colors.white,
              ),
        onPressed: startListening,
      ),
    );
  }

  void startListening() {
    lastWords = "";
    // lastError = "";
    speech.listen(
      onResult: resultListener,
      localeId: "en_in",
    );
    setState(() {});
  }

  // void stopListening() {
  //   speech.stop();
  //   setState(() {});
  // }

  // void cancelListening() {
  //   speech.cancel();
  //   setState(() {});
  // }

  void resultListener(SpeechRecognitionResult result) {
    setState(() {
      lastWords = "${result.recognizedWords} "; // - ${result.finalResult}";
      // print('found words:  $lastWords');
      if (result.finalResult) {
        _expanded = true;

        if (counter % 2 == 1) {
          dummy.add(lastWords);
        } else {
          _content.add(lastWords);
        }
        checkKeyword();
        counter++;
      }
    });
  }

  // void errorListener(SpeechRecognitionError error) {
  //   setState(() {
  //     lastError = "${error.errorMsg} - ${error.permanent}";
  //   });
  // }

  void statusListener(String status) {
    setState(() {
      lastStatus = "$status";
    });
  }
}
