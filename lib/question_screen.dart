import 'package:flutter/material.dart';
import 'package:adv_project/answer_button.dart';
import 'package:adv_project/questions.dart';
import 'package:adv_project/modals/quiz_question.dart';

class QuestionScreen extends StatefulWidget{
   @override
  State<QuestionScreen> createState() {
        return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen>{
  var currentQIndex = 0;

  void IncrementCurrentQ (){
    setState(() {
      currentQIndex++;
    });
  }


   @override
  Widget build( context) {
     final currentQuestion = questions[currentQIndex];

    return  SizedBox
      (
      width: double.infinity,
        child:Container(
           margin:const EdgeInsets.all(40),
           child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
             crossAxisAlignment:CrossAxisAlignment.stretch,
             children:[
               Text(
                 currentQuestion.text,
                 style:const TextStyle(
                   color:Colors.white,
                 ),
                   textAlign:TextAlign.center,

               ),
               const SizedBox(height: 30),
               ...currentQuestion.getShuffledAnswer().map((answer){
                 return AnswerButton(answertext:answer,onTap:(){});
               })
             ],
           ),
        ),
    );
  }
}