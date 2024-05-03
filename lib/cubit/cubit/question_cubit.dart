import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/model/questionmodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

part 'question_state.dart';



class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionInitial());

  String generateRandomNumbersString() {
    Random random = Random();
    String result = '';

    for (int i = 0; i < 4; i++) {
      int randomNumber = random.nextInt(10); // Generate a random number between 0 and 9
      result += randomNumber.toString();
    }

    return result;
  }

  CollectionReference exams = FirebaseFirestore.instance.collection('exams');

  Future<void> addquestion() async {
    String id = generateRandomNumbersString(); // Generate a new random number string for each question

    // Check if a document with the generated ID already exists
    QuerySnapshot snapshot = await exams.where('exam.id', isEqualTo: id).limit(1).get();

    if (snapshot.docs.isEmpty) {
      // Document does not exist, add the new document
      emit(Questionsucess());
      try {
        await exams.add({
          'exam': {
            'question': 'question two',
            'choices': [
              {'answer true': true},
              {'answer false': false},
              {'answer false': false},
              {'answer false': false},
            ],
            'id': id
          }
        });
      } catch (e) {
        emit(QuestionError(message: e.toString())); // Handle failure state
      }
    } else {
      // Document already exists, handle accordingly
      emit(QuestionError(message: 'Document with ID $id already exists'));
    }
  }
}
