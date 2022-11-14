import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:triviaflutter/common/models/question_document/question_document.dart';
import 'package:triviaflutter/core/tools/date_utils.dart';

class QuestionFirebase {
  static final FirebaseFirestore _firebaseFirestore =
      FirebaseFirestore.instance;

  static QuestionFirebase? _instance;

  static late final CollectionReference<QuestionDocument> _questionRef;

  QuestionFirebase._() {
    _questionRef =
        _firebaseFirestore.collection("questionOfTheDay").withConverter(
              fromFirestore: (snapshot, _) =>
                  QuestionDocument.fromJson(snapshot.data()!),
              toFirestore: (questionDocument, _) {
                print("bipidibou");
                print(questionDocument);
                var json = questionDocument.toJson();
                
                
                print(json);

                return json;
              },
            );
  }

  static QuestionFirebase getInstance() {
    _instance ??= QuestionFirebase._();

    return _instance!;
  }

  Future<void> insertQuestions(QuestionDocument questions) async {
    print(questions);
    print(getDateAsString());
    print("dadada");
    await _questionRef.doc(getDateAsString()).set(questions);

    return;
  }

  Future<QuestionDocument?> getTodayQuestions() async {
    DocumentSnapshot<QuestionDocument> data =
        await _questionRef.doc(getDateAsString()).get();

    return data.data();
  }

  Future<void> delete(String id) async {
    return _questionRef.doc(id).delete();
  }
}
