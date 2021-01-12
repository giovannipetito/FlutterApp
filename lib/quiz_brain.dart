import 'question.dart';
import 'package:flutter_app/values/strings.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    // Question(question: 'A slug\'s blood is green.', answer: true), // Vale solo se scriviamo il costruttore così: Question({String question, bool answer})
    Question(question1, true),
    Question(question2, true),
    Question(question3, true),
    Question(question4, true),
    Question(question5, false),
    Question(question6, true),
    Question(question7, true),
    Question(question8, false),
    Question(question9, true),
    Question(question10, false),
    Question(question11, true),
    Question(question12, true),
    Question(question13, true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }
}