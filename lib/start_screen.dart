import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{

 const StartScreen({super.key});


  @override
  Widget build(context) {
    return
     Center(
      child:Column(
        mainAxisSize:MainAxisSize.min,
        children: [
          Image.asset(
              'assets/quiz_image/download.png',
              width:300,
             //color:Colors.black12,
          ),
          //Opacity(
          // opacity:0.5,
          //child:
          // Image.asset(
          //      'assets/quiz_image/download.png'
          //      ),
          // ),
          const SizedBox(height: 80),
          const  Text(
            'Learn Flutter The Fun way!',
          style:TextStyle(color:
          Colors.white,
          fontSize:24),
          ),
         const SizedBox(height:30),
          OutlinedButton.icon(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon:const Icon(Icons.arrow_right_alt),
              label:const Text('start quiz')
          ),
        ],
     ),
     );

  }
}