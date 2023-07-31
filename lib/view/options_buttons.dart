import 'package:flutter/material.dart';

class OptionsButtons extends StatefulWidget {
  const OptionsButtons({super.key});

  @override
  State<OptionsButtons> createState() => _OptionsButtonsState();
}

class _OptionsButtonsState extends State<OptionsButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("A"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("C"),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("B"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("D"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
