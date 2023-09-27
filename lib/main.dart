import 'package:flutter/material.dart';
import 'package:adv_project/start_screen.dart';
void main() {
 runApp(
   MaterialApp(
        home:Scaffold(
          appBar:AppBar(title:const Text('QuizApp')),
          body:Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors:[
                  Colors.deepPurple,
                  Colors.deepOrangeAccent,
                  ],
                    begin:Alignment.topLeft,
                   end:Alignment.bottomRight,
              ),
              ),
            child:const StartScreen(),
        ),

     ),
   ),
  );
}



