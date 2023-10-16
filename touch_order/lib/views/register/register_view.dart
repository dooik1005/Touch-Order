import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

Future<void> signInWithAnonymous() async {
    UserCredential _credential = await _firebaseAuth.signInAnonymously();
  }