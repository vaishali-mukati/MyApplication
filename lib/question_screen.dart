import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget{
   @override
  State<QuestionScreen> createState() {
        return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen>{
   @override
  Widget build( context) {
    return  Column(
      children:[
     const Text('The Questions'),
      const SizedBox(height: 30),
      ElevatedButton(
          onPressed:(){},
          child:const Text('Answer 1')
      ),
        ElevatedButton(
            onPressed:(){},
            child:const Text('Answer 2')
        ),
        ElevatedButton(
            onPressed:(){},
            child:const Text('Answer 2')
        ),
      ],
    );
  }
}