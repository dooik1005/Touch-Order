import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
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
    return MaterialApp(
      title: 'Touch Order Home Menu',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Touch Order Home Menu')
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('go to')
            , onPressed: (){
            },)
          ),
      ),
    );
  }
}

