class User {
  final String id;
  final String pseudo;
  final int score;
  final String avatar;
  final DateTime? lastAnswerDate;
  final int? lastAnswerIndex;

  User({
    required this.id,
    required this.pseudo,
    required this.score,
    required this.avatar,
    this.lastAnswerDate,
    this.lastAnswerIndex,
  });

  User copyWith({
    String? id,
    String? pseudo,
    int? score,
    String? avatar,
    DateTime? lastAnswerDate,
    int? lastAnswerIndex,
  }) {
    return User(
      id: id ?? this.id,
      pseudo: pseudo ?? this.pseudo,
      score: score ?? this.score,
      avatar: avatar ?? this.avatar,
      lastAnswerDate: lastAnswerDate ?? this.lastAnswerDate,
      lastAnswerIndex: lastAnswerIndex ?? this.lastAnswerIndex,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          pseudo == other.pseudo &&
          score == other.score &&
          avatar == other.avatar;

  @override
  int get hashCode =>
      id.hashCode ^ pseudo.hashCode ^ score.hashCode ^ avatar.hashCode;
}
