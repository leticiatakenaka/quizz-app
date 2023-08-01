import 'dart:math';

import 'package:quizz_app/model/question_model.dart';
import 'package:quizz_app/service/api_service.dart';

class OptionProvider {
  Future<List<QuestionModel>?> getQuestions() async {
    try {
      ApiService apiService = ApiService();
      return await apiService.fetchQuestions();
    } catch (e) {
      print('Erro: $e');
      return null;
    }
  }

  Future<QuestionModel?> getRandomQuestion() {
    return getQuestions()
        .then((value) => value?[Random().nextInt(value.length)]);
  }
}
