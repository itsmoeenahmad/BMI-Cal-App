import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../screens/Authentication/authenticationScreen.dart';
import '../ReusableWidgets/showMessage.dart';

Future<void> signOutWithGoogle(BuildContext context) async {
  try {
    // Sign out from Google
    await GoogleSignIn().signOut();

    // Sign out from Firebase
    await FirebaseAuth.instance.signOut();

    // Show a success message
    showMessage(context, 'Successfully logged out', Colors.green);

    // Navigate to the login screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => authenticationScreen()),
    );
  } catch (e) {
    // Handle errors
    showMessage(context, 'An error occurred: $e', Colors.red);
  }
}