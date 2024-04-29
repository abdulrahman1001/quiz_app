import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/model/questionmodel.dart';

part 'answerstate_state.dart';

class AnswerstateCubit extends Cubit<AnswerstateState> {
  AnswerstateCubit() : super(AnswerstateInitial());
  int score = 0;
  int currentque = 0;
  List<questionmodel> qlist = [
    questionmodel(
      question: 'question one',
      choices: [
        {'answer true': true},
        {'answer false': false},
          {'answer false': false},
            {'answer false': false},
      ],
    ),
    questionmodel(
      question: 'question two',
      choices: [
        {'answer': true},
        {'answer': false},
      ],
    ),
    questionmodel(
      question: 'question three',
      choices: [
        {'answer': true},
        {'answer': false},
      ],
    ),
  ];

  void trueanswer() {

    score++;
    currentque++;
    emit(Answerstatetrue());

  }

  void falseanswer() {
    currentque++;
    emit(Answerstatefalse());
  }
}
