import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_app/model/questionmodel.dart';

part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionInitial());
}
