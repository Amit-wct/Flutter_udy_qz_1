import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final VoidCallback selectHandler;
  final String ansText;

  Answer(this.selectHandler,this.ansText);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.selectHandler,
        child: Text(widget.ansText),
      ),
    );
  }
}
