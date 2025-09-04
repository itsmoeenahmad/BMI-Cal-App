import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../screens/HomeScreen/home_screen.dart';
import '../ReusableWidgets/showMessage.dart';

Future<void> signInWithGoogle(BuildContext context) async {
   try {
     // Show loading

    // Attempt to sign in the user with Google
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // If the user cancels the sign-in, googleUser will be null
    if (googleUser == null) {
      showMessage(context, 'Failed! Try Again', Colors.red);
      return;
    }

    // Obtain the authentication details from the Google sign-in
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credential
    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Sign in to Firebase with the Google credential
    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    // Check if the user is successfully signed in
    if (userCredential.user != null) {
      // Remove loading
      showMessage(context, 'Success', Colors.green);

      // Navigate to the home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const homeScreen()),
      );
    } else {
      // Remove loading
      showMessage(context, 'Failed! Try Again', Colors.red);
    }
  } catch (e) {
     // Remove loading
    // Handle errors
    print('error in catch: $e');
    showMessage(context, 'An error occurred: $e', Colors.red);
  }
}
