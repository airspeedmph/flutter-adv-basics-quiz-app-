import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp( MaterialApp(
    home: Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 76, 5, 88),
              Color.fromARGB(255, 255, 64, 252)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,),
        ),
        child: const StartScreen(),),

    ),
    ),
    );
}
