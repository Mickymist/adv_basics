import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key,required this.answer, required this.onTap});
  final String answer;
  final void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: 60,
      child: ElevatedButton(
      
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            // padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 60),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
      
      
          ),
          child: Text(answer,textAlign: TextAlign.center,
          style: GoogleFonts.amaranth(
            fontSize: 17,
            color: Colors.white

          ),)),
    );
  }}