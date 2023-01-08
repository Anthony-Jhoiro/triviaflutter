import 'package:flutter/material.dart';

class QuestionLoading extends StatelessWidget {
  const QuestionLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Récupération des questions du jour"),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
