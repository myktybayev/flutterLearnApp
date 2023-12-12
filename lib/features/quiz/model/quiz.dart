class Question {
  final String questionText;
  final List<Answer> answerList;
  Question({required this.questionText, required this.answerList});
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer({required this.answerText, required this.isCorrect});
}

List<Question> getQuestions() {
  List<Question> list = [
    Question(
        questionText: "What is the first rule of fight club?",
        answerList: [
          Answer(answerText: "Dont play games", isCorrect: false),
          Answer(answerText: "Dont talk about fight club", isCorrect: true),
          Answer(answerText: "Make all of them angry", isCorrect: false),
          Answer(answerText: "Take a good bath", isCorrect: false),
        ]),
    Question(questionText: "What is the V6 means in engines?", answerList: [
      Answer(answerText: "Vertical 6 cylinder engine", isCorrect: true),
      Answer(answerText: "Inline 6 cylinder engine", isCorrect: false),
      Answer(
          answerText: "Double vertical engine with 6 cylinder",
          isCorrect: false),
      Answer(answerText: "Inline 5 cylinder Volvo engine", isCorrect: false),
    ]),
    Question(questionText: "What is the percent of bank?", answerList: [
      Answer(answerText: "Its just a percent", isCorrect: false),
      Answer(answerText: "It is money", isCorrect: false),
      Answer(
          answerText: "It is amount of money which bank will take",
          isCorrect: true),
      Answer(answerText: "Just a deposit", isCorrect: false),
    ]),
    Question(
        questionText: "What is the temperature of the freezing water?",
        answerList: [
          Answer(answerText: "50C", isCorrect: false),
          Answer(answerText: "100C", isCorrect: false),
          Answer(answerText: "40C", isCorrect: false),
          Answer(answerText: "0C", isCorrect: true),
        ])
  ];
  return list;
}
