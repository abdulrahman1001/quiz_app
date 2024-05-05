import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/cubit/cubit/answerstate_cubit.dart';
import 'package:quiz_app/cubit/cubit/question_cubit.dart';

class AddFirebaseButton extends StatelessWidget {
  const AddFirebaseButton({Key? key, required this.ques}) : super(key: key);
  final String ques;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          List<Map<String, bool>> choice = [];
          for (int i = 0; i < 4; i++) {
            choice.add(BlocProvider.of<AnswerstateCubit>(context)
                .qlist[0]
                .choices[i]
                .map((key, value) => MapEntry(key, value)));
          }
          BlocProvider.of<QuestionCubit>(context).addquestion(
              BlocProvider.of<AnswerstateCubit>(context).qlist[0].question,
              choice);

        },
        child: Text('Add to Database'),
      ),
    );
  }
}
