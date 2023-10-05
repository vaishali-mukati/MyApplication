import 'package:adv_project/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget{
  const QuestionSummary(this.sumarryData,{super.key});

  final List<Map<String,Object>> sumarryData;

  @override
  Widget build( context) {
     return SizedBox(
       height: 400,
         child:SingleChildScrollView(
         child:Column(
             children:sumarryData.map(
              (data){
                return SummaryItem(data);
                    },
                ).toList(),
             )
     ),
                );
                }

}