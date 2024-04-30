import 'package:flutter/material.dart';

class choicebutton extends StatefulWidget {
  const choicebutton(
      {super.key,
      required this.choice,
      required this.answerstate,
      required this.buttonColor,
      required this.onPressed});
  final String choice;
  final bool answerstate;
  final Color buttonColor;
  final void Function() onPressed;

  @override
  State<choicebutton> createState() => _choicebuttonState();
}

class _choicebuttonState extends State<choicebutton> {
  bool ispress=false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async{
        ispress=true;
        setState(() {
          
        });
        
        widget.onPressed();
           await Future.delayed(const Duration(seconds: 2));
         ispress=false;
        setState(() {
          
        });
        
       
      },
      child: Text(widget.choice),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all
        
        (
         
       ispress
              ? (widget.answerstate ? Colors.green : Colors.red)
              : widget.buttonColor,
        
        ),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        minimumSize: MaterialStateProperty.all(Size(300, 50)),
      ),
    );
  }
}
