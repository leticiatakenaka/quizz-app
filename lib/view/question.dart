import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String ask;

  const Question({required this.ask, Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        widget.ask,
      ),
    );
  }
}
