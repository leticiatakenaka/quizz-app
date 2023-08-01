import 'package:flutter/material.dart';
import 'package:quizz_app/model/question_model.dart';
import 'package:quizz_app/provider/option_provider.dart';
import 'package:quizz_app/view/options_buttons.dart';
import 'package:quizz_app/view/options_text.dart';
import 'package:quizz_app/view/question.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future _future;
  OptionProvider optionProvider = OptionProvider();
  QuestionModel? selectedQuestion;

  @override
  void initState() {
    _future = optionProvider.getRandomQuestion();
    super.initState();
    _future.then((value) {
      setState(() {
        selectedQuestion = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: selectedQuestion == null
          ? const Center(child: CircularProgressIndicator())
          : FutureBuilder(
              future: _future,
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Question(ask: selectedQuestion!.ask),
                      const SizedBox(height: 80),
                      OptionsText(selectedQuestion: selectedQuestion!),
                      const SizedBox(height: 200),
                      const OptionsButtons(),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
