import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({required this.answertext,required this.onTap,super.key});

  final String answertext;
  final void Function() onTap;

  @override
  Widget build( context) {
    return  ElevatedButton(
        onPressed:onTap,
        style:ElevatedButton.styleFrom(
          padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          backgroundColor:const Color.fromARGB(255,33 ,5 ,95 ),
          foregroundColor:Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
        ),
          child:Text(answertext,textAlign:TextAlign.center,),

    );
  }
}