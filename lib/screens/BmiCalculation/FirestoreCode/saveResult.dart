
import 'package:bmical/screens/BmiCalculation/ProviderClasses/savedAgainProviderClass.dart';
import 'package:bmical/screens/BmiCalculation/ProviderClasses/savedProviderClass.dart';
import 'package:flutter/material.dart';
import 'package:bmical/components/ReusableWidgets/showMessage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

Future<void> saveResult(context,String userID, dynamic bmiresult, var date) async
{
  print('saved method called');
  final _firestore_ref = await FirebaseFirestore.instance.collection('bmiResult');

  dynamic id = DateTime.now().millisecondsSinceEpoch.toString();

  await _firestore_ref.doc(id).set({
    'uid': userID.toString(),
    'bmiresult': bmiresult.toString(),
    'date': date.toString()
  }).then((success){
    showMessage(context, 'Saved', Colors.green);
    Provider.of<savedProvideClass>(context,listen: false).change(true);
    Provider.of<savedAgainProviderClass>(context,listen: false).change(true);
  }).onError((error,another){
    showMessage(context, error.toString(), Colors.red);
  });
}
