import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;


  @override
  Widget build(context) {
     return  SizedBox(
         width: double.infinity,
          child:Container(
           margin:const EdgeInsets.all(20),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.center,
             children: [
              const Text('Your answer x out of Y Questions correctly'),
              const SizedBox(height:30),
              const Text('List of Answer and questions'),
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