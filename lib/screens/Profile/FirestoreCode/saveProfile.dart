


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../components/ReusableWidgets/showMessage.dart';

Future<void> saveProfile(context,String fN, String mN, String lN, String email, dynamic code, dynamic pN, String yG) async
{
  final _firestoreRef = FirebaseFirestore.instance.collection('userProfile');

  String id = FirebaseAuth.instance.currentUser!.uid.toString();

  _firestoreRef.doc(id).set({
    'firstName': fN.toString(),
    'middleName': mN.toString(),
    'lastName': lN.toString(),
    'email': email.toString(),
    'code': code.toString(),
    'phoneNumber': pN.toString(),
    'yourGoal': yG.toString(),
    'uid': FirebaseAuth.instance.currentUser!.uid.toString(),
  }).then((success){
    print('uploaded');
    showMessage(context, 'Success', Colors.green);
  }).onError((error,another){
    print('error');
    print(error);
    showMessage(context, '${error}', Colors.red);
  });

}