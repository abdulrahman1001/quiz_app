import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/cubit/cubit/question_cubit.dart';
class AddFirebaseButton extends StatelessWidget {
  const AddFirebaseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          BlocProvider.of<QuestionCubit>(context).addquestion();
        },
        child: Text('Add to Database'),
      ),
    );
  }
}