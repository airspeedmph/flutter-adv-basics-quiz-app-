import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questins_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "questions_index": i,
        "questions": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answers": chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfTotalQuestions = questions.length;
    final numOfCorrectQuestions = summaryData.where((data) {
      return data["user_answers"] == data["correct_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("You answered $numOfCorrectQuestions out of $numOfTotalQuestions  correctly ",
             style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 15,
             ),),
            const SizedBox(height: 30),
            QuestinsSummary(summaryData),

            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text("Refresh Quiz")),
          ],
        ),
      ),
    );
  }
}
