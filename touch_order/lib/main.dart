import 'package:flutter/material.dart';

void main() {
  runApp(const TouchOrder());
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
            child: const Text('go to Menu')
            , onPressed: (){},)
          ),
      ),
    );
  }
}

