import 'package:flutter/material.dart';

class QuestionAnswer extends StatefulWidget {
  final String answer;
  final Function onPress;

  const QuestionAnswer({Key? key, required this.answer, required this.onPress})
      : super(key: key);

  @override
  State<QuestionAnswer> createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  bool selected = false;

  void select() {
    setState(() {
      selected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: double.infinity,
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: Card(
            color: selected ? Colors.red : Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(widget.answer),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
