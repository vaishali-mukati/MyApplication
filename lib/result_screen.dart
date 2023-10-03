import 'package:adv_project/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_project/questions_sumarry.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

 List<Map<String,Object>> getSummaryData(){
   final List<Map<String,Object>> summary = [];

   for(int i = 0; i < chosenAnswer.length;i++){
     summary.add(
              {
            'questions_index' : i,
            'questions':questions[i].text,
            'correct_Answer':questions[i].answer[0],
            'user_Answer':chosenAnswer[i],
             },
     );
   }
  return summary;
 }
   @override
  Widget build(context) {
     return  SizedBox(
         width: double.infinity,
          child:Container(
           margin:const EdgeInsets.all(20),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.center,
             children: [
              QuestionSummary(getSummaryData()),
              //const SizedBox(height:30),
              //const Text('List of Answer and questions'),
               const SizedBox(height:30),
               TextButton(
                   onPressed:(){},
                   child:const Text('Restart Quiz'),
               ),

            ],
        ),
       )
     );
  }
}