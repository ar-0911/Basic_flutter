import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'QuizBrain.dart';
// ctrl+ q quick documentation.
QuizBrain quizBrain = QuizBrain();
void main()=>runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List <Icon> scorekeeper = [];


  void checkAnswer(bool userPickedAnswer){
    setState(() {

      if(quizBrain.isFinished()){
        Alert(context: context, title: 'QUIZ END', desc: 'You\'ve reached the end of the quiz').show();
        quizBrain.reset_question_number();
        scorekeeper.clear();
      }
      else{
        bool correct_answer = quizBrain.getQuestionAnswer();
        if(userPickedAnswer == correct_answer){
          scorekeeper.add(const Icon(Icons.check, color: Colors.green,));
        }
        else{
          scorekeeper.add(const Icon(Icons.close, color: Colors.red,));
        }
        quizBrain.nextQuestion();
      }
    });
  }
  /*List<String> Questions = [
    'You can lead a cow down the stairs but not up the stairs',
    'Approximately one quarter of human bones are in the feet',
    'A slug\'s blood is green'
  ];

  List<bool>answers = [
    false,
    true,
    true
  ];*/

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:150.0,horizontal: 20.0),
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
        ),

        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(

                  onPressed: (){
                    checkAnswer(true);
                  },
                  child:Container(
                    width: double.infinity,
                    height: 100.0,
                    color: Colors.green,
                    child:const Center(
                      child: Text(
                        'True',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
              ),
            ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: (){
                checkAnswer(false);
              },
              child: Container(
                width: double.infinity,
                height: 100.0,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: Row(
            children: scorekeeper,
          ),
        ),
      ],
    );
  }
}

