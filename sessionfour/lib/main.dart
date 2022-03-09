import 'package:sessionfour/question_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DialogueTest());

class DialogueTest extends StatelessWidget {
  const DialogueTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuestionScreen(),
    );
  }
}