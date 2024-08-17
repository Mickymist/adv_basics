import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.switchScreenasrestartpress,{super.key, required this.chosenAnswer});
  final List<String> chosenAnswer;
  final void Function()  switchScreenasrestartpress;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': question[i].text,
          'correct_answer': question[i].answer[0],
          'user_answer': chosenAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.yesevaOne(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold

              )
            ),
            const SizedBox(height: 10,),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
                onPressed: () {
                  switchScreenasrestartpress();
                },icon: const Icon(Icons.restart_alt,color: Colors.black,),label: const Text('Restart',style: TextStyle(color: Colors.black),),),
          ],
        ),
      ),
    );
  }
}
