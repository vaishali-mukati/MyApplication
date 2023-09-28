import 'package:flutter/material.dart';
import 'package:adv_project/answer_button.dart';
import 'package:adv_project/questions.dart';

class QuestionScreen extends StatefulWidget{
   @override
  State<QuestionScreen> createState() {
        return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen>{
   @override
  Widget build( context) {
     final currentQuestion = questions[0];

    return  SizedBox(
            width: double.infinity,
            child: Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                   children:[
                           Text(
                                 currentQuestion.text,
                                 style:const TextStyle(
                                 color:Colors.white,
                             ),
                           ),
                              const SizedBox(height: 30),
                                ...currentQuestion.answer.map((answer){
                                    return AnswerButton(answertext:answer,onTap:(){});
                                    })
                            ],
      ),
    );
  }
}