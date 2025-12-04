import 'package:test_001/WEEK-10/Quiz/models/answer.dart';
import 'package:test_001/WEEK-10/Quiz/models/question.dart';

class Quiz {
  final List<Answer> answers = [];
  final Question quesitons;

  Quiz({required this.quesitons});


  void addAnswer(Answer answer){
    return answers.add(answer);
  }


  int getScore(){
    int score = 0;

    for(var answer in answers){
      if(answer.answerChoice == answer.question.goodChoice){
        return score++;
      }
      return 0;
    }
    return score;
  }

}
