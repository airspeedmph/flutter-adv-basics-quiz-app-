import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton( {super.key,
  required this.answerText, 
  required this.onTap});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 10,
        ),
        backgroundColor: const Color.fromARGB(255, 67, 2, 106),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadiusGeometry.circular(40), ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
