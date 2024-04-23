import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  final String data;

  Output(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        data,
        style: TextStyle(fontSize: 18, color: Colors.blue),
        textAlign: TextAlign.center,
      ),
    );
  }
}
