import 'package:flutter/material.dart';

import '../models/prescription.dart';

class Prescriptions with ChangeNotifier {
  List<Prescription> _items = [];

  List<Prescription> get items {
    return [..._items];
  }

  void addPrescriptions(Prescription prescription) {
    final newPrescription = Prescription(
      id: prescription.id,
      name: prescription.name,
      advice: prescription.advice,
      diagnosis: prescription.diagnosis,
      prescriptions: prescription.prescriptions,
      symptoms: prescription.symptoms,
    );
    _items.add(newPrescription);
    notifyListeners();
  }
}
