import 'package:flutter/material.dart';

class InstantCurve extends Curve {
  // t = x
  @override
  double transformInternal(double t) {
    return 1; //f(x)
  }
}

class QuestionAnswer extends StatelessWidget {
  final String answer;
  final bool selected;
  final bool showAnswer;
  final bool isRightAnswer;
  final Function onPress;

  const QuestionAnswer({
    Key? key,
    required this.answer,
    required this.onPress,
    required this.selected,
    required this.showAnswer,
    required this.isRightAnswer,
  }) : super(key: key);

  // bool selected = false;
  Future<void> select() async {
    if (!showAnswer) {
      this.onPress();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: InkWell(
        onTap: select,
        child: SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              color: showAnswer
                  ? isRightAnswer
                      ? Colors.green
                      : Colors.red
                  : selected
                      ? Theme.of(context).primaryColor
                      : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    answer,
                    style: TextStyle(
                      color: showAnswer
                          ? Colors.white
                          : selected
                              ? Theme.of(context).colorScheme.onPrimary
                              : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
