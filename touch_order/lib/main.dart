import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const TouchOrder());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class TouchOrder extends StatelessWidget {
  const TouchOrder({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if(user == null) { // TODO: 로그인이 안 되어 있으면 로그인 페이지로 넘어가기
      
      } else { //TODO: 로그인이 되어 있으면 메인 뷰로 넘어가기

      }
    });
    return MaterialApp();
  }
}

