import 'package:flutter_test/flutter_test.dart';
import 'package:quizz_app/model/option_model.dart';
import 'package:quizz_app/provider/check_answer_provider.dart';

void main() {
  late CheckAnswerProvider checkAnswerProvider;

  OptionModel correctAnswer = OptionModel(text: "The Sun", replay: true);

  setUp(() => {checkAnswerProvider = CheckAnswerProvider()});
  test("Deve retornar true quando a resposta for correta", () {
    final result = checkAnswerProvider.check(correctAnswer);

    expect(result, equals(true));
  });
}
