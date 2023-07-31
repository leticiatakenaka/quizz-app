import 'package:quizz_app/model/option_model.dart';

class QuestionModel {
  final int id;
  final String ask;
  final OptionModel optionA;
  final OptionModel optionB;
  final OptionModel optionC;
  final OptionModel optionD;

  QuestionModel({
    required this.id,
    required this.ask,
    required this.optionA,
    required this.optionB,
    required this.optionC,
    required this.optionD,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      id: json['id'],
      ask: json['ask'],
      optionA: OptionModel.fromJson(json['optionA']),
      optionB: OptionModel.fromJson(json['optionB']),
      optionC: OptionModel.fromJson(json['optionC']),
      optionD: OptionModel.fromJson(json['optionD']),
    );
  }
}
