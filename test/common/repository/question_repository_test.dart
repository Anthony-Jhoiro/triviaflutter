import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:triviaflutter/common/datasources/remote/question_api.dart';
import 'package:triviaflutter/common/datasources/remote/question_firestore.dart';
import 'package:triviaflutter/common/models/dto/question_document_dto/question_document_dto.dart';
import 'package:triviaflutter/common/models/dto/question_dto/question_dto.dart';
import 'package:triviaflutter/common/models/user.dart';
import 'package:triviaflutter/common/repository/current_user_repository.dart';
import 'package:triviaflutter/common/repository/question_repository.dart';

class MockQuestionFirebase extends Mock implements QuestionFirebase {}

class MockQuestionApi extends Mock implements QuestionApi {}

class MockCurrentUserRepository extends Mock implements CurrentUserRepository {}

final questionDto = QuestionDto(
  category: "rdm",
  correct_answer: "???",
  difficulty: "hard",
  incorrect_answers: ["Oui", "Non", "Zralabardjan"],
  question:
      "Si la mémoire est à la tête ce que le passée, peut-on y accéder à six ?",
  type: "single",
);

final questionDto2 = QuestionDto(
  category: "tttt",
  correct_answer: "???",
  difficulty: "hard",
  incorrect_answers: ["Oui", "Non", "Zralabardjan"],
  question: "TODO : trouver une bonne question",
  type: "single",
);

final currentUser = User(
  id: "totoalaplage",
  pseudo: "Marshal Erikson",
  score: 65489,
  avatar: "",
  lastAnswerDate: null,
  lastAnswerIndex: null,
);

void main() {
  group("QuestionRepository", () {
    final questionFirebase = MockQuestionFirebase();
    final questionApi = MockQuestionApi();
    final currentUserRepository = MockCurrentUserRepository();

    final questionRepository = QuestionRepository(
      questionFirebase: questionFirebase,
      questionApi: questionApi,
      currentUserRepository: currentUserRepository,
    );

    test("answerQuestion", () async {
      final questionScore = 5;
      final questionIndex = 7;

      when(() => currentUserRepository.answerQuestion(
          questionScore, questionIndex)).thenAnswer((_) => Future.value());

      await questionRepository.answerQuestion(questionScore, questionIndex);

      verify(() => currentUserRepository.answerQuestion(
          questionScore, questionIndex)).called(1);
    });

    test("answerQuestion", () async {
      final questionScore = 5;
      final questionIndex = 7;

      when(() => currentUserRepository.answerQuestion(
          questionScore, questionIndex)).thenAnswer((_) => Future.value());

      await questionRepository.answerQuestion(questionScore, questionIndex);

      verify(() => currentUserRepository.answerQuestion(
          questionScore, questionIndex)).called(1);
    });

    test(
      "getQuestionsOfTheDay should get already existing questions",
      () async {
        when(() => currentUserRepository.currentUser).thenReturn(currentUser);
        when(() => questionFirebase.getTodayQuestions()).thenAnswer(
          (_) => Future.value(QuestionDocumentDto(results: [questionDto])),
        );

        final questions = await questionRepository.getQuestionsOfTheDay();

        expect(questions.length, 1);

        final receivedQuestion = questions[0];

        expect(receivedQuestion.difficulty, questionDto.difficulty);
        expect(receivedQuestion.question, questionDto.question);
        expect(receivedQuestion.correct_answer, questionDto.correct_answer);
        expect(
          receivedQuestion.answers.contains(questionDto.correct_answer),
          true,
        );
        for (var answer in questionDto.incorrect_answers) {
          expect(receivedQuestion.answers.contains(answer), true);
        }
      },
    );

    test(
      "getQuestionsOfTheDay should fetch questions from the API if not in firestore",
      () async {
        final document = QuestionDocumentDto(results: [questionDto]);
        when(() => currentUserRepository.currentUser).thenReturn(currentUser);
        when(() => questionFirebase.getTodayQuestions()).thenAnswer(
          (_) => Future.value(null),
        );

        when(() => questionApi.getQuestionsOfTheDay()).thenAnswer(
          (_) => Future.value(document),
        );

        when(() => questionFirebase.insertQuestions(document))
            .thenAnswer((_) => Future.value());

        final questions = await questionRepository.getQuestionsOfTheDay();

        verify(() => questionFirebase.insertQuestions(document)).called(1);

        expect(questions.length, 1);

        final receivedQuestion = questions[0];

        expect(receivedQuestion.difficulty, questionDto.difficulty);
        expect(receivedQuestion.question, questionDto.question);
        expect(receivedQuestion.correct_answer, questionDto.correct_answer);
        expect(
          receivedQuestion.answers.contains(questionDto.correct_answer),
          true,
        );
        for (var answer in questionDto.incorrect_answers) {
          expect(receivedQuestion.answers.contains(answer), true);
        }
      },
    );

    test(
      "getQuestionsOfTheDay should only return not-answered questions",
      () async {
        when(() => currentUserRepository.currentUser)
            .thenReturn(currentUser.copyWith(
          lastAnswerDate: DateTime.now(),
          lastAnswerIndex: 0,
        ));
        when(() => questionFirebase.getTodayQuestions()).thenAnswer(
          (_) => Future.value(
            QuestionDocumentDto(
              results: [questionDto, questionDto2],
            ),
          ),
        );

        final questions = await questionRepository.getQuestionsOfTheDay();

        expect(questions.length, 1);

        final receivedQuestion = questions[0];

        expect(receivedQuestion.difficulty, questionDto2.difficulty);
        expect(receivedQuestion.question, questionDto2.question);
        expect(receivedQuestion.correct_answer, questionDto2.correct_answer);
        expect(
          receivedQuestion.answers.contains(questionDto2.correct_answer),
          true,
        );
        for (var answer in questionDto2.incorrect_answers) {
          expect(receivedQuestion.answers.contains(answer), true);
        }
      },
    );
  });
}
