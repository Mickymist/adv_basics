import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/result_screen.dart';
//2

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState(); //constructor call
  }
}
class _QuizState extends State<Quiz>{

  // Widget? activeScreen ;
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];
  void switchScreen(){
   setState((){
     activeScreen = 'question-screen';
   });
  }
  void reSwitchScreen(){
    setState(() {
      activeScreen = 'question-screen';
      selectedAnswers =[];
    });

  }
  void chooseAnswer (String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == question.length){
      setState(() {
        activeScreen = 'result-screen';
      });

    }

  }


  @override
  Widget build(context){
    Widget screenWidget =  StartScreen(switchScreen);
    if(activeScreen=='question-screen'){
      screenWidget  = QuestionsScreen(onSelectAnswer: chooseAnswer); //passing pointer of method
    }
    if(activeScreen == 'result-screen'){
      screenWidget = ResultsScreen(reSwitchScreen,chosenAnswer: selectedAnswers, );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            // decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //         colors: [Colors.white, Colors.white70],
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight)),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_quiz.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: screenWidget,
        )
      ),
    );
  }
}




