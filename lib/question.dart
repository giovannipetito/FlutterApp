class Question {

  String questionText;
  bool questionAnswer;

  /*
  Question({String question, bool answer}) {
    questionText = question;
    questionAnswer = answer;
  }
  */

  /*
  Question(String question, bool answer) {
    questionText = question;
    questionAnswer = answer;
  }
  */

  // Se vogliamo semplificare al massimo il costruttore, possiamo scrivere:
  Question(this.questionText, this.questionAnswer);
}