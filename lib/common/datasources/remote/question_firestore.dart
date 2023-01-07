import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:triviaflutter/common/models/dto/question_document_dto/question_document_dto.dart';
import 'package:triviaflutter/core/tools/date_utils.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  static QuestionFirebase? _instance;

  static late final CollectionReference<QuestionDocumentDto> _questionRef;

  QuestionFirebase._() {
    _questionRef =
        _firebaseFirestore.collection("questionOfTheDay").withConverter(
              fromFirestore: (snapshot, _) =>
                  QuestionDocumentDto.fromJson(snapshot.data()!),
              toFirestore: (questionDocument, _) => questionDocument.toJson(),
            );
  }

  static QuestionFirebase getInstance() {
    _instance ??= QuestionFirebase._();

    return _instance!;
  }

  Future<void> insertQuestions(QuestionDocumentDto questions) async {
    print(questions);
    print(getDateAsString());
    print("dadada");
    await _questionRef.doc(getDateAsString()).set(questions);

    return;
  }

  Future<QuestionDocumentDto?> getTodayQuestions() async {
    DocumentSnapshot<QuestionDocumentDto> data =
        await _questionRef.doc(getDateAsString()).get();

    return data.data();
  }

  Future<void> delete(String id) async {
    return _questionRef.doc(id).delete();
  }
}
