import 'package:flutter/material.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestinsSummary extends StatelessWidget {
  const QuestinsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(children: [
                  Text(((data["questions_index"]as int) + 1 ).toString() ),
                  Expanded(
                    child: Column(
                      children: [
                          Text(data["questions" ]as String ,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 10,
                          ),),
                                   SizedBox(
                                    height: 8,
                                  ),
                                  Text(data["user_answers"]as String ,
                                  style: GoogleFonts.lato (
                                    color: const Color.fromARGB(255, 239, 196, 65),
                                    fontSize: 5,
                                  ),),
                                   Text(data["correct_answer"]as String ,
                                   style: GoogleFonts.lato(
                                    color: const Color.fromARGB(255, 13, 230, 89),
                                     fontSize: 5,
                                   ), ),
                    
                      ],
                    ),
                  )
             
                
                ],);
              },
              ).toList(),
        ),
      ),
    );
  }
}
