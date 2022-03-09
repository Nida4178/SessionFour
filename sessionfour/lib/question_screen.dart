import 'package:sessionfour/data.dart';
import 'package:flutter/material.dart';

import 'answer_screen.dart';
import 'hint_screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 0, 191),
      appBar: AppBar(
        title: const Text("GUESS THE MOVIE!"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(dataMap['question']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const HintScreen()),
              );
            },
            child: const Text("Show hint"),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (_) => const AnswerScreen(),
                ),
              );
            },
            child: const Text("SHOW ANSWER"),
          ),
        ],
      ),
    );
  }
}