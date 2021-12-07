import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  Answer (this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.brown.shade800,
        color: Colors.amber.shade900,
        onPressed: selectHandler,
        child: Text('answer 1'),
      )
    );
  }
}
