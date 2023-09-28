import 'package:adv_project/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_project/start_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
   State<Quiz> createState(){
     return _QuizState();
   }
}
 class _QuizState extends State<Quiz>{
  Widget? activescreen ;

   @override
  void initState() {
     activescreen = StartScreen(swicthScreen);
     super.initState();
  }

  void swicthScreen(){
     setState(() {
        activescreen = QuestionScreen();
     });

  }
     @override
   Widget build(context) {
      return MaterialApp(
            home:Scaffold(
              appBar:AppBar(title:const Text('QuizApp'),),
                body:Container(
                  decoration: const BoxDecoration(
                   gradient: LinearGradient(
                     colors:[
                       Colors.deepPurple,
                       Colors.deepOrange,
                    ],
                   begin:Alignment.topLeft,
                  end:Alignment.bottomRight,
                 ),
              ),
             child: activescreen,
           ),
            ),
      );
     }
 }