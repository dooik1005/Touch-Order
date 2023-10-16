import 'package:firebase_core/firebase_core.dart';
import 'package:touch_order/views/login/login_view.dart';
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
    return MaterialApp(home: LoginView());
  }
}