import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 3)),
      child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(((data['question_index'] as int) + 1).toString(),),
                const SizedBox(width: 30,),
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    Text(data['question'].toString()),
                    const SizedBox(height: 5,),
                    Text(data['user_answer'] as String, textAlign: TextAlign.center,),
                    Text(data['correct_answer'] as String, textAlign: TextAlign.center,),
                  ],),
                )
              ],
            );
          }).toList(),
        ),
    );
  }
}
