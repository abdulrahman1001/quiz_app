import 'package:flutter/material.dart';
import 'package:quiz_app/cubit/cubit/answerstate_cubit.dart';
import 'package:quiz_app/cubit/cubit/question_cubit.dart';
import 'package:quiz_app/view/answerpage.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AnswerstateCubit(),),
          BlocProvider(create: (context) => QuestionCubit(),)
      ],
      child: MaterialApp(
        home: AnswerPage(),
      ),
    );
  }
}
