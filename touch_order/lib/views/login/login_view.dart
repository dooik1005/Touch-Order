import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

var logger = Logger();
class LoginView extends StatelessWidget {
  final _firebaseAuth = FirebaseAuth.instance;
  

  @override
  Widget build(Object context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 32, 32, 32),
          child: const Column(children: [
            Align(  
              alignment: Alignment.topLeft,
              child: Column(
                  children: [
                    Text(
                     '터치 오더', 
                     style: TextStyle(
                      fontFamily: 'Kyungki',
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                     ),
                    )
                  ],
                )
              )
          ],)
        ),
      ),  
    );
  }
}