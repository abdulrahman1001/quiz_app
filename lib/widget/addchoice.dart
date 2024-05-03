import 'package:flutter/material.dart';

class addchoiceform extends StatelessWidget {
  const addchoiceform({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'add choice',
        ),
        maxLines: 1,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    ) ;
  }
}