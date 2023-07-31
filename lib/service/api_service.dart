import 'package:http/http.dart' as http;
import 'package:quizz_app/model/question_model.dart';
import 'dart:convert';

class ApiService {
  Future<List<QuestionModel>> fetchQuestions() async {
    final response = await http
        .get(Uri.parse("https://api-quizz.vercel.app/api/v1/general-culture"));

    if (response.statusCode == 200) {
      // Decodifica o JSON e retorna uma lista de QuestionModel
      List<dynamic> jsonData = json.decode(response.body);
      List<QuestionModel> questions =
          jsonData.map((data) => QuestionModel.fromJson(data)).toList();
      return questions;
    } else {
      throw Exception('Falha ao carregar os dados da API');
    }
  }
}
