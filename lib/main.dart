import 'package:flutter/material.dart';
import 'package:flutter_application_lab2/quiz.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _index = 2;
  var questions = [{
    "question" : "Whats is the Coolest Color ?",
    "answers" : ["Minty Green", "Fiery Red", "Ice Blue" , "Autumn Yellow"]
    },

    {
    "question" : "Can a Matchbox ?",
    "answers" : ["Yes", "No, but a Tin Can", "What?" , "I understand this reference"]
    },

    {
    "question" : "The quietest animal on the Farm?",
    "answers" : ["Pig", "Cow", "Pony" , "Rooster"],
  }];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
      backgroundColor: Colors.white54,
      body: 
      
      _index < questions.length?
      Center(child: Quiz(questions, _index))
      : const Center(child: Text("Done")),
      ),
    );
  }

 
}
