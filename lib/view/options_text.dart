import 'package:flutter/material.dart';
import 'package:quizz_app/model/question_model.dart';

class OptionsText extends StatefulWidget {
  final QuestionModel? selectedQuestion;

  const OptionsText({required this.selectedQuestion, Key? key})
      : super(key: key);

  @override
  State<OptionsText> createState() => _OptionsTextState();
}

class _OptionsTextState extends State<OptionsText> {
  @override
  Widget build(BuildContext context) {
    List<String> options = [
      "A - ${widget.selectedQuestion!.optionA.text}",
      "B - ${widget.selectedQuestion!.optionB.text}",
      "C - ${widget.selectedQuestion!.optionC.text}",
      "D - ${widget.selectedQuestion!.optionD.text}",
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: options
          .map((option) => Text(
                option,
                style: const TextStyle(fontSize: 18),
              ))
          .toList(),
    );
  }
}
