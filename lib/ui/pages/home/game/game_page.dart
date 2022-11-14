import 'package:flutter/material.dart';
import 'package:triviaflutter/common/repository/question_repository.dart';

import '../../../../common/models/question/question.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late Future<List<Question>> futureQuestions;

  @override
  void initState() {
    super.initState();
    futureQuestions = QuestionRepository.getInstance().getQuestionsOfTheDay();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Question>>(
        future: futureQuestions,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: snapshot.data!.map((e) => Text(e.question)).toList(),
            );
          } else if (snapshot.hasError) {
            print(snapshot.stackTrace);
            return Column(
              children: [
                Text('${snapshot.error.toString()}'),
              ],
            );
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
