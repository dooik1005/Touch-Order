import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

var logger = Logger();
class LoginView extends StatelessWidget {
  
  final _firebaseAuth = FirebaseAuth.instance;
  
  final Text touchOrderName = const Text( // '터치 오더' 텍스트
    '터치 오더', 
    style: TextStyle(
      fontFamily: 'Kyungki', 
      fontSize: 40, 
      fontWeight: FontWeight.bold
    )
  );  

  final Text touchOrderDescription = const Text( // '주문, 요청사항, 결제까지 앉은 자리에서' 텍스트
    '주문, 요청사항, 결제까지 앉은 자리에서', 
    style: TextStyle(
      fontFamily: 'Kyungki', 
      fontSize: 20
    )
  );

  LoginView({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  touchOrderName, 
                  const Padding(padding: EdgeInsets.only(top: 4)),
                  touchOrderDescription
                ],
              ), 
              const Padding(padding: EdgeInsets.only(top: 4)), 
              const PhoneNumPasswordInput()
            ]
          )
        )
      )
    );
  }
}

class PhoneNumPasswordInput extends StatefulWidget {
  const PhoneNumPasswordInput({super.key});
  
  @override
  State<PhoneNumPasswordInput> createState() => _PhoneNumPasswordInputState();
}

class _PhoneNumPasswordInputState extends State<PhoneNumPasswordInput> { 
  
  TextFormField phoneNumInput = TextFormField( // 전화번호를 받는 TextFormField
    keyboardType: TextInputType.phone,
    decoration: const InputDecoration(
      hintText: '전화번호를 입력하세요', 
    ),
    validator: (value) { // 전화번호가 '010-XXXX-XXXX'인 전화번호인지 확인하는 코드
       RegExp regExp = RegExp(r'(^(010)-[0-9]{4}-[0-9]{4}$)');
      if(!regExp.hasMatch(value!)) {
        return '잘못된 전화번호입니다';
      } else {
        return null;
      }
    },
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );
  
  TextFormField passwordInput = TextFormField( // 비밀번호를 받는 TextFormField
    keyboardType: TextInputType.visiblePassword,
    decoration: const InputDecoration(
      hintText: '비밀번호를 입력하세요(9~12자리)'
    ),
    obscureText: true,
    validator: (value) {
      if(value!.length < 9) {
        return '비밀번호가 너무 짧습니다';
      } else if(value.length > 12) {
        return '비밀번호가 너무 깁니다';
      } else {
        return null;
      }
    },
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      phoneNumInput,
      const Padding(padding: EdgeInsets.only(top:4)),
      passwordInput
    ]);

    
  }
}