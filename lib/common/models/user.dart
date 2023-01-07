class User {
  final String id;
  final String pseudo;
  final int score;
  final String avatar;

  User({
    required this.id,
    required this.pseudo,
    required this.score,
    required this.avatar,
  });

  User copyWith({
    String? id,
    String? pseudo,
    int? score,
    String? avatar,
  }) {
    return User(
      id: id ?? this.id,
      pseudo: pseudo ?? this.pseudo,
      score: score ?? this.score,
      avatar: avatar ?? this.avatar,
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
