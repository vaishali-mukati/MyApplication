import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget{
  const QuestionSummary(this.sumarryData,{super.key});

  final List<Map<String,Object>> sumarryData;

  @override
  Widget build( context) {
     return SizedBox(
       height: 300,
         child:SingleChildScrollView(
         child:Column(
             children:sumarryData.map(
                     (data) {
                    return  Row(children: [
                        Text(((data['questions_index'] as int)+ 1).toString()),
                        Expanded(child:
                           Column(children: [
                            Text(data ['questions'] as String),
                           const SizedBox(height: 5),
                            Text(data['user_Answer'] as String),
                            Text(data['correct_Answer'] as String),
                        ],)
                       )
                    ],
                    );
             }).toList()

     ),
     ),
     ) ;
  }
}