import 'package:flutter/material.dart';
import 'package:sessionfour/data.dart';


class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 1, 231),
      appBar: AppBar(
        title: const Text("HERE IS THE ANSWER!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset(
              dataMap['answerImage1']!,
              height: 500,
              width: 500,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              dataMap['answerImage2']!,
              height: 500,
              width: 500,
            ),
          ],
        ),
      )
    );
  }
}