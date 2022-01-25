import 'package:flutter/material.dart';
import 'questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
// ignore_for_file: non_constant_identifier_names

void main() {
  runApp(const QuizzApp());
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  QuestionBank questionBank = QuestionBank();
 int questionindex =0;
 late bool correctAnswer;
 void updatQuestions(bool userchoice){
   if (userchoice==correctAnswer){
     setState(() {
        ScoreIocn.add(const Icon(Icons.check, size: 30.0, color: Colors.green),);
       questionindex++; 
       score++;
       lastquiz();
     });
   }else {
      setState(() {
         ScoreIocn.add(Icon(Icons.close, size: 30.0, color: Colors.red,),);
       questionindex++;
      
       lastquiz();
     });
   }

 }

 void lastquiz(){
   if (questionindex==QuestionBank().questionbrain.length){
      alert();
     
      // AlertDialog();
   
     setState(() {
       questionindex=0;
       ScoreIocn =[];
     });
   }

 }
 
 int score =0;

 
 


 void alert(){
   AlertDialog(
            title: Text('Welcome'),
            content: Text('Do you wanna learn flutter?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('YES', style: TextStyle(color: Colors.black),),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('NO', style: TextStyle(color: Colors.black),),
              ),
            ],
          );
          
          return aler
   


  //  showDialog(
  //    context: context,
  //    builder: (context){
  //      return AlertDialog(
  //        title: Text("Result")
  //      );

  //    }
  //  );
  //  Alert(context: context, title: "Finished", desc: "You get $score out of ${QuestionBank().questionbrain.length}").show();
 
   



   
 }
  List<Icon>ScoreIocn =[];
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.black12,
        bottomNavigationBar: Wrap(children: ScoreIocn),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                   questionBank.questionbrain[questionindex].questionText,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      
                       correctAnswer = QuestionBank().questionbrain[questionindex].questionAnswers;
                       updatQuestions(true);
                    },
                    child: const Text(
                      "True",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      correctAnswer = QuestionBank().questionbrain[questionindex].questionAnswers;
                       updatQuestions(false);
                    },
                    child: const Text(
                      "False",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }




}
