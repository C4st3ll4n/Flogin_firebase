import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
export 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
          idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

      final AuthResult authResult =
      await _firebaseAuth.signInWithCredential(credential);

      final FirebaseUser firebaseUser = authResult.user;

      print(firebaseUser.email);
    } on PlatformException catch (e) {
      print("Platform exception //////////////////// \n ${e.message}");
      throw e;
    }
    catch (e) {
      print("Platform exception //////////////////// \n $e");
    }
  }

  Future<void> sair() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  Future<void> singWithFacebook() async {

  }

  Stream<FirebaseUser> get onAuthStateChange =>
      _firebaseAuth.onAuthStateChanged;
}


