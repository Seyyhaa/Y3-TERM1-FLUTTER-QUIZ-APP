import 'package:flutter/material.dart';



class StartScreen extends StatelessWidget {
  final VoidCallback onClick;

  const StartScreen({super.key,required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            width: 100,
            child: Image.asset('assets/images/pic.png'),
          ),
          Expanded(child :Center(
            child: ElevatedButton(onPressed: onClick, child: Text('Start Quiz',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),),
          ),
          )
        ],
        
      ),
    );
  }
}