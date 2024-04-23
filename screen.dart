import 'package:flutter/material.dart';
import './output.dart';

class SurvEntry extends StatelessWidget {
  final String name;
  final String age;
  final String color;
  final String food;

  SurvEntry({
    required this.name,
    required this.age,
    required this.color,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project 03 – Survey – $name'),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(fontSize: 18),
            ),
            Output(name),
            Text(
              'Age',
              style: TextStyle(fontSize: 18),
            ),
            Output(age),
            Text(
              'Favorite Color',
              style: TextStyle(fontSize: 18),
            ),
            Output(color),
            Text(
              'Favorite Food',
              style: TextStyle(fontSize: 18),
            ),
            Output(food),
          ],
        ),
      ),
    );
  }
}
