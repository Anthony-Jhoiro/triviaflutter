import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:swiping_card_deck/swiping_card_deck.dart';
import 'package:triviaflutter/common/models/question.dart';
import 'package:triviaflutter/ui/pages/home/game/bloc/game_cubit.dart';
import 'package:triviaflutter/ui/pages/home/game/widgets/question_answer.dart';
import 'package:triviaflutter/ui/pages/home/game/widgets/question_card.dart';

class QuestionView extends StatelessWidget {
  final Question question;
  final List<String> answers;
  final GameCubit gameCubit;

  QuestionView({
    Key? key,
    required this.question,
    required this.gameCubit,
    required this.answers,
  }) : super(key: key);

  SwipingCardDeck buildDeck(BuildContext context) {
    return SwipingCardDeck(
      cardDeck: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 8,
          child: SizedBox(
            width: 250,
            child: QuestionCardContent(question: question.question),
          ),
        ),
      ],
      onLeftSwipe: (Card) {
        return;
      },
      onRightSwipe: (Card) {
        return;
      },
      onDeckEmpty: () {
        return;
      },
      cardWidth: 250,
      swipeThreshold: MediaQuery.of(context).size.width / 3,
      minimumVelocity: 1000,
      rotationFactor: 0.8 / 3.14,
      swipeAnimationDuration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deck = buildDeck(context);

    return Column(
      children: [
        Expanded(
          child: deck,
        ),
        Expanded(
          child: Column(
            children: answers.map((answer) {
              final state = gameCubit.state;
              final selected =
                  state is AnswerSelected && state.selectedAnswer == answer;

              final showAnswers = state is ValidAnswer || state is WrongAnswer;

              final bool isRightAnswer =
                  gameCubit.question.correct_answer == answer;

              return QuestionAnswer(
                onPress: () async {
                  if (state is AnswerSelected &&
                      state.selectedAnswer == answer) {
                    if (gameCubit.question.correct_answer == answer) {
                      await deck.swipeRight();
                    } else {
                      await deck.swipeLeft();
                    }
                    this.gameCubit.answerConfirmed(answer);
                  } else {
                    this.gameCubit.selectAnswer(answer);
                  }
                },
                answer: HtmlUnescape().convert(answer),
                selected: selected,
                isRightAnswer: isRightAnswer,
                showAnswer: showAnswers,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
