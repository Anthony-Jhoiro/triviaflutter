import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';

class QuestionCardContent extends StatelessWidget {
  final String question;

  const QuestionCardContent({Key? key, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 4,
            strokeAlign: StrokeAlign.inside,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              HtmlUnescape().convert(question),
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
