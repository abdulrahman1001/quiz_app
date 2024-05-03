import 'package:flutter/material.dart';
import 'package:quiz_app/cubit/cubit/choice_cubit.dart';
import 'package:quiz_app/widget/addchoice.dart';
import 'package:quiz_app/widget/choicebutton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class choicelistview extends StatelessWidget {
  const choicelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: BlocProvider.of<ChoiceCubit>(context).choicelength.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: addchoiceform(),
          );
        },
      ),
    );
  }
}