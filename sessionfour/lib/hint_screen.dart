import 'package:sessionfour/data.dart';
import 'package:flutter/material.dart';

import 'answer_screen.dart';

class HintScreen extends StatelessWidget {
  const HintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 198, 233),
      appBar: AppBar(
        title: const Text("HINT FOR YOU :-)"),
      ),
      body: Column(
        children: [
            Padding(
            padding: const EdgeInsets.all(25),
            child: Text(dataMap['hint']!),
          ),
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
      )
    );
  }
}