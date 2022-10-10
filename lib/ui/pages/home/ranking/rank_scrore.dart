import 'package:flutter/material.dart';

class RankScore extends StatelessWidget {
  final int score;

  const RankScore({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Text(
        score.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
