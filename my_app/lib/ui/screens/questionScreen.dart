import 'package:flutter/material.dart';
import 'package:my_app/data/storages/question.dart';
import '../widgets/answerButton.dart';
import '../../models/question.dart';
import '../../models/quiz.dart';
import '../../models/answer.dart';

class QuestionScreen extends StatefulWidget {
  final Quiz quiz;
  final VoidCallback onPressFinalQuestion;
  const QuestionScreen({
    required this.onPressFinalQuestion,
    required this.quiz,
    super.key,
  });

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionIndex = 0;

  void onPress(String answer, Question question) {
    widget.quiz.addAnswer(Answer(question: question, userAnswer: answer));
    if (questionIndex == questions.length - 1) {
      widget.onPressFinalQuestion();
    } else {
      setState(() {
        questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.quiz.questions[questionIndex].title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                ...widget.quiz.questions[questionIndex].answerChoices.map(
                  (answer) => AnswerButton(
                    answer: answer,
                    onPress: () =>
                        onPress(answer, widget.quiz.questions[questionIndex]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
