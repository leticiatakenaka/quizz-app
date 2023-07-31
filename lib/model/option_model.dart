class OptionModel {
  final String text;
  final bool replay;

  OptionModel({
    required this.text,
    required this.replay,
  });

  factory OptionModel.fromJson(Map<String, dynamic> json) {
    return OptionModel(
      text: json['text'],
      replay: json['replay'],
    );
  }
}
