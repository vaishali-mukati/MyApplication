import 'package:adv_project/question_screen.dart';
import 'package:adv_project/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_project/start_screen.dart';
import 'package:adv_project/result_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
   State<Quiz> createState(){
     return _QuizState();
   }
}
 class _QuizState extends State<Quiz>{
   var activescreen = 'start screen';
   final List<String> selectAnswer =[];
   //@override
  //void initState() {
     //activescreen = StartScreen(swicthScreen);
     //super.initState();
  //}

  void swicthScreen() {
    setState(() {
      activescreen = 'question-screen';
    });
  }
  void chooseAnswer (String answer){
    selectAnswer.add(answer);

    if(selectAnswer.length == questions.length){
       setState(() {
         activescreen = 'result_screen';
       });
    }
  }


     @override
   Widget build(context) {

    Widget screenWidget  = StartScreen(swicthScreen);

    if(activescreen == 'question-screen'){
      screenWidget = QuestionScreen(onSelectScreen:chooseAnswer,);
    }

    if(activescreen == 'result_screen'){
      screenWidget = ResultScreen(chosenAnswer:selectAnswer,);
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