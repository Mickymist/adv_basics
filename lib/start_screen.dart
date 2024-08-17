import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
//3

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreenasargu,{super.key});
  final void Function()  switchScreenasargu;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/logo-3.png',
          width: 600,

          // color: const Color.fromARGB(150, 255, 255, 255),
        ),
        // const SizedBox(height: 40),
        Text(
          'Learning Flutter the fun way!',
          style: GoogleFonts.amaranth(
            color: Colors.black,
            fontSize: 25
          )
        ),
        const SizedBox(height: 40),
        OutlinedButton.icon(
            onPressed: () {
              switchScreenasargu();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.black,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start quiz'))
      ],
    ));
  }
}
