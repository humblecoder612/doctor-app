import 'package:flutter/material.dart';

class EditPrescriptionScreen extends StatefulWidget {
  static const routeName = '/edit-prescription-screen';

  String name = '';
  String symptoms = '';
  String diagnosis = '';
  String prescription = '';
  String advice = '';

  EditPrescriptionScreen({
    this.advice,
    this.diagnosis,
    this.name,
    this.prescription,
    this.symptoms,
  });

  @override
  _EditPrescriptionScreenState createState() => _EditPrescriptionScreenState();
}

class _EditPrescriptionScreenState extends State<EditPrescriptionScreen> {
  double height = 30;
  // final _imageUrlController = TextEditingController();

  final _symptomsFocusNode = FocusNode();
  final _diagnosisFocusNode = FocusNode();
  final _prescriptionFocusNode = FocusNode();
  final _adviceFocusNode = FocusNode();

  final _form = GlobalKey<FormState>();

  @override
  void dispose() {
    // _imageUrlFocusNode.removeListener(_updateImageUrl);
    _adviceFocusNode.dispose();
    _diagnosisFocusNode.dispose();
    _prescriptionFocusNode.dispose();
    _symptomsFocusNode.dispose();
    // _imageUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Prescription'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text('SUBMITTED'),
                  content: Text('Prescription sent to patient successfully!'),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.red[50],
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _form,
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                TextFormField(
                  initialValue: widget.name,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(labelText: 'Name'),
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_symptomsFocusNode);
                  },
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter a name';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _editedProduct = Prescription(
                  //     id: _editedProduct.id,
                  //     isFavorite: _editedProduct.isFavorite,
                  //     description: _editedProduct.description,
                  //     title: value,
                  //     imageUrl: _editedProduct.imageUrl,
                  //     price: _editedProduct.price,
                  //   );
                  // },
                ),
                SizedBox(
                  height: height,
                ),
                TextFormField(
                  initialValue: widget.symptoms,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(labelText: 'Symptoms'),
                  focusNode: _symptomsFocusNode,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_diagnosisFocusNode);
                  },
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter symptoms';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _editedProduct = Product(
                  //     id: _editedProduct.id,
                  //     isFavorite: _editedProduct.isFavorite,
                  //     description: _editedProduct.description,
                  //     title: _editedProduct.title,
                  //     imageUrl: _editedProduct.imageUrl,
                  //     price: double.parse(value),
                  //   );
                  // },
                ),
                SizedBox(
                  height: height,
                ),
                TextFormField(
                  initialValue: widget.diagnosis,
                  decoration: InputDecoration(labelText: 'Diagnosis'),
                  focusNode: _diagnosisFocusNode,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_prescriptionFocusNode);
                  },
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter a diagnosis';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _editedProduct = Product(
                  //     id: _editedProduct.id,
                  //     isFavorite: _editedProduct.isFavorite,
                  //     description: value,
                  //     title: _editedProduct.title,
                  //     imageUrl: _editedProduct.imageUrl,
                  //     price: _editedProduct.price,
                  //   );
                  // },
                ),
                SizedBox(
                  height: height,
                ),
                TextFormField(
                  initialValue: widget.prescription,
                  decoration: InputDecoration(labelText: 'Prescription'),
                  focusNode: _prescriptionFocusNode,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_adviceFocusNode);
                  },
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter prescription';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _editedProduct = Product(
                  //     id: _editedProduct.id,
                  //     isFavorite: _editedProduct.isFavorite,
                  //     description: value,
                  //     title: _editedProduct.title,
                  //     imageUrl: _editedProduct.imageUrl,
                  //     price: _editedProduct.price,
                  //   );
                  // },
                ),
                SizedBox(
                  height: height,
                ),
                TextFormField(
                  initialValue: widget.advice,
                  decoration: InputDecoration(labelText: 'Advice'),
                  focusNode: _adviceFocusNode,
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     return 'Please enter a diagnosis';
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value) {
                  //   _editedProduct = Product(
                  //     id: _editedProduct.id,
                  //     isFavorite: _editedProduct.isFavorite,
                  //     description: value,
                  //     title: _editedProduct.title,
                  //     imageUrl: _editedProduct.imageUrl,
                  //     price: _editedProduct.price,
                  //   );
                  // },
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.all(100),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    color: Theme.of(context).primaryColor,
                    elevation: 5,
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: Text('SUBMITTED'),
                          content: Text(
                              'Prescription sent to patient successfully!'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
