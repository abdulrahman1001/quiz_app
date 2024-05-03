import 'package:flutter/material.dart';
import 'package:quiz_app/cubit/cubit/choice_cubit.dart';
import 'package:quiz_app/cubit/cubit/question_cubit.dart';
import 'package:quiz_app/widget/addchoice.dart';
import 'package:quiz_app/widget/addfirebesebutton.dart';
import 'package:quiz_app/widget/addnewchoicecolum.dart';
import 'package:quiz_app/widget/addquestiontextfiled.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/widget/choicelistview.dart';

class addquietionpage extends StatefulWidget {
  const addquietionpage({super.key});

  @override
  State<addquietionpage> createState() => _addquietionpageState();
}

class _addquietionpageState extends State<addquietionpage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
      body: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
          return Form(
            key: formkey,
            child: Column(children: [
              addquestiontextfiled(),
              choicelistview(),
              AddFirebaseButton()
            ]),
          );
        },
      ),
    );
  }
}
