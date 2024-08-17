import 'package:flutter/material.dart';
class QuestionsIdentifier extends StatelessWidget{
  const QuestionsIdentifier({super.key, required this.isCorrectAnswer,required this.questionIndex });
  final int questionIndex;
  final bool isCorrectAnswer;
  Widget build (BuildContext context){
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer? Colors.lightGreenAccent: Colors.red,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionIndex.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}