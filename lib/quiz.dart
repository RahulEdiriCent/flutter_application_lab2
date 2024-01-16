import 'package:flutter/material.dart';
import 'package:flutter_application_lab2/answer.dart';
import 'package:flutter_application_lab2/question.dart';

class Quiz extends StatelessWidget{
    final _index;
    final List<Map<String,Object>> questions;

    const Quiz(this.questions, this._index, {super.key});

    @override
      Widget build(BuildContext context){
        return Column(
        children:[ 
          Question(questions[_index]["question"] as String),
          Answer((questions[_index]["answers"] as List<String>)[0]),
          Answer((questions[_index]["answers"] as List<String>)[1]),
          Answer((questions[_index]["answers"] as List<String>)[2]),
          Answer((questions[_index]["answers"] as List<String>)[3])
        ]
      );
      }

}