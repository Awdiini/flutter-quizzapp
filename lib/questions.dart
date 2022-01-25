class Questions{
  final String questionText;
  final bool questionAnswers;
  Questions({required this.questionText, required this.questionAnswers});
}

class QuestionBank{
  List<Questions> questionbrain=[
    Questions(questionText: "The Capital city of Somalia is Dhuusamareb", questionAnswers: false),
    Questions(questionText: "The Capital city of Kneya is Nairobi", questionAnswers: true),
    Questions(questionText: "Somalia Located in Eastern Asia", questionAnswers: false),
    Questions(questionText: "The Capital city of USA is Buffalo", questionAnswers: false),
    Questions(questionText: "Flutter Developed by Microsoft", questionAnswers: false),
    Questions(questionText: "The Population of Somalia is 50 Million", questionAnswers: false),
    Questions(questionText: "Flutter Developed by Google", questionAnswers: true),
    

  ];
}