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
   var activescreen = 'start screen';

   //@override
  //void initState() {
     //activescreen = StartScreen(swicthScreen);
     //super.initState();
  //}

  void swicthScreen(){
     setState(() {
        activescreen = 'question-screen';
     });

  }
     @override
   Widget build(context) {

    Widget screenWidget  = StartScreen(swicthScreen);

    if(activescreen == 'question-screen'){
      screenWidget = QuestionScreen();
    }

      return MaterialApp(
            home:Scaffold(
              appBar:AppBar(title:const Text('QuizApp'),),
                body:Container(
                  decoration: const BoxDecoration(
                   gradient: LinearGradient(
                     colors:[
                       Colors.deepPurple,
                       Colors.deepPurpleAccent,
                    ],
                   begin:Alignment.topLeft,
                  end:Alignment.bottomRight,
                 ),
              ),
             child:screenWidget,
            ),
      )
      );
     }
 }