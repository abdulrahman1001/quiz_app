import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/cubit/cubit/answerstate_cubit.dart';
import 'package:quiz_app/widget/choicebutton.dart';

class ButtonListView extends StatelessWidget {
  const ButtonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerstateCubit, AnswerstateState>(
      builder: (context, state) {
        int indexQuestion =
            BlocProvider.of<AnswerstateCubit>(context).currentque;
        var currentChoices = BlocProvider.of<AnswerstateCubit>(context)
            .qlist[indexQuestion]
            .choices;

        return Expanded(
          child: ListView.builder(
            itemCount: currentChoices.length,
            itemBuilder: (context, index) {
              var choiceMap = currentChoices[index];
              var choiceKey =
                  choiceMap.keys.first; // Get the first (and only) key.
              var choiceValue =
                  choiceMap[choiceKey]; // assuming each map has only one key
                  
              Color? color = Colors.blueGrey[50];

              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: choicebutton(
                  buttonColor: color!,
                  onPressed: () async{
                    if (choiceValue == true) {
                        color = Colors.green;
                        
                          await Future.delayed(const Duration(seconds: 5));
                      BlocProvider.of<AnswerstateCubit>(context).trueanswer();
                    
                    } else {
                       color = Colors.red;
                          await Future.delayed(const Duration(seconds: 5));
                      BlocProvider.of<AnswerstateCubit>(context).falseanswer();
                     
                    }
                  },
                  choice: choiceKey,
             answerstate: choiceValue!,
                  // Passing the actual choice string
                ),
              );
            },
          ),
        );
      },
    );
  }
}
