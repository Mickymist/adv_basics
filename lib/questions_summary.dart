import 'package:adv_basics/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return SummaryItem(data);
          // return Row(
          //   children: [
          //     Container(
          //       height: 35,
          //       alignment: Alignment.topLeft,
          //       margin: const EdgeInsets.only(bottom: 70),
          //       child: Text('${(data['question_index'] as int) + 1}.  ',
          //       style: GoogleFonts.amaranth
          //         (
          //         fontSize: 17,
          //         color: Colors.white
          //       ),),
          //     ),
          //     Expanded(
          //       child: Column(
          //         children: [
          //           Container(
          //             height: 35,
          //             alignment: Alignment.topLeft,
          //             child: Text(
          //               (data['question'] as String),
          //               textAlign: TextAlign.start,
          //               style: GoogleFonts.amaranth
          //                 (
          //                   fontSize: 14,
          //                   color: Colors.white
          //               ),
          //             ),
          //           ),
          //           const SizedBox(
          //             height: 8,
          //           ),
          //           Container(
          //             alignment: Alignment.topLeft,
          //             child: Text(
          //
          //               (data['user_answer'] as String),
          //               style: GoogleFonts.arimo(
          //                 fontSize: 14,
          //                 color: Colors.cyan,
          //                 fontWeight: FontWeight.bold
          //               ),
          //             ),
          //           ),
          //           Container(
          //             alignment: Alignment.topLeft,
          //             child: Text(data["correct_answer"] as String,
          //               style: GoogleFonts.arimo(
          //                   fontSize: 14,
          //                   color: Colors.greenAccent,
          //                   fontWeight: FontWeight.bold
          //               ),),
          //           ),
          //           const SizedBox(
          //             height: 15,
          //           )
          //
          //         ],
          //       ),
          //     )
          //   ],
          // );
        }).toList()),
      ),
    );
  }
}
