import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:triviaflutter/common/models/question.dart';
import 'package:triviaflutter/ui/pages/home/game/bloc/game_cubit.dart';
import 'package:triviaflutter/ui/pages/home/game/widgets/question_answer.dart';

class QuestionView extends StatefulWidget {
  final Question question;
  final List<String> answers;

  final GameCubit gameCubit;

  const QuestionView({
    Key? key,
    required this.question,
    required this.gameCubit,
    required this.answers,
  }) : super(key: key);

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 12),
              child: SwipingCardDeck(
                cardWidth: MediaQuery.of(context).size.width * 0.83,
                cardDeck: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          HtmlUnescape().convert(widget.question.question),
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                onLeftSwipe: (Card) {
                  widget.gameCubit.nextQuestion();
                },
                onRightSwipe: (Card) {
                  widget.gameCubit.nextQuestion();
                },
                onDeckEmpty: () {
                  return;
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: widget.answers.map((answer) {
              final state = widget.gameCubit.state;
              final selected =
                  state is AnswerSelected && state.selectedAnswer == answer;

              return QuestionAnswer(
                onPress: () {
                  if (state is AnswerSelected &&
                      state.selectedAnswer == answer) {
                    widget.gameCubit.answerConfirmed(answer);
                  } else {
                    widget.gameCubit.selectAnswer(answer);
                  }
                },
                answer: HtmlUnescape().convert(answer),
                selected: selected,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
