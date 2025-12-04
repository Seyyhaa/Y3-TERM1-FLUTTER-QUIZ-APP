import 'package:flutter/material.dart';
import '../widgets/button.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onPressStart;
  const StartScreen({
    required this.onPressStart,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 400),
            width: 100,
            child: Image.asset('assets/flutter.png'),
          ),
          Expanded(child :Center(
            child:QuizButton(name: 'Start quiz', onPress: onPressStart,),),
          ),
          ]
       ),
       
    );
  }
}