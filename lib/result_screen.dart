import 'package:adv_project/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_project/questions_sumarry.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.chosenAnswer,required this.restartQuiz});
  final void Function() restartQuiz;
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
    final summaryData = getSummaryData();
   final numTotalQuestion = questions.length;
   final numTotalCorrectAnswer = summaryData.where((data){
        return data['user_Answer'] == data['correct_Answer'];
   }).length;


     return  SizedBox(
         width: double.infinity,
          child:Container(
           margin:const EdgeInsets.all(20),
            child:Column(
             // crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.center,
             children: [
               Text('you Answered $numTotalCorrectAnswer out of $numTotalQuestion questions correctly.',
               textAlign:TextAlign.center,
               ),
               const SizedBox(height: 30),
               QuestionSummary(summaryData),
              //const SizedBox(height:30),
              //const Text('List of Answer and questions'),
               const SizedBox(height:30),
               //TextButton(
                   //onPressed:(){},
                   //child: OutlinedButton() //const Text('Restart Quiz'),
               //),
                TextButton.icon(
                    onPressed:restartQuiz,
                    style:OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                  icon:const Icon(Icons.refresh),
                  label: const Text('Restart Quiz'),
                  
                )
            ],
            )
        ),
       );

  }
}