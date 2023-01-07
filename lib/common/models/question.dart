class Question {
  final String category;
  final String correct_answer;
  final List<String> answers;
  final String difficulty;
  final String question;
  final String type;

  Question({
    required String this.category,
    required String this.correct_answer,
    required List<String> this.answers,
    required String this.difficulty,
    required String this.question,
    required String this.type,
  });
}
