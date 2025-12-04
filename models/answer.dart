import 'package:test_001/WEEK-10/Quiz/models/question.dart';

class Answer{
    final String answerChoice;
    final Question question;
    Answer({required this.question, required this.answerChoice});


    bool isCorrect(){
      return answerChoice == question.goodChoice;
    }
}