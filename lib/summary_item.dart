import 'package:adv_project/question_identifire.dart';
import 'package:adv_project/questions_sumarry.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem (this.itemData,{super.key});

  final Map<String , Object> itemData;

   @override
  Widget build(BuildContext context) {
     final isCorrectAnswer = itemData['user_Answer'] == itemData['correct_Answer'];

       return Row(
           crossAxisAlignment:CrossAxisAlignment.start,
           children: [
             QuestionIdentifier(
         questionIndex: itemData['questions_index'] as int,
         isCorrectAnswer: isCorrectAnswer
             ),
             const SizedBox(width: 20),
             Expanded(
                 child: Column(
                     crossAxisAlignment:CrossAxisAlignment.start,
                   children: [
                     Text(
                       itemData['questions'] as String,
                     ),
                   const SizedBox(width: 300),
                   Text(
                     itemData['user_Answer'] as String,
                     style: const TextStyle(
                       color:Color.fromARGB(255, 202, 171, 252)),
                   ),
                   Text(
                     itemData['correct_Answer'] as String,
                      style:const  TextStyle(
                        color:Color.fromARGB(255, 181, 254, 246)
                      ),

                   )
                   ]
                 )
             )
           ],
       );
  }
}