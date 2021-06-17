import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String answer;
  final void Function() onSelected;

  Buttons(this.answer, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onSelected,
          child: Text(
            answer,
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.blue),
        ));
  }
}
