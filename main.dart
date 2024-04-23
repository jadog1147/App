import 'package:flutter/material.dart';
import 'screen.dart';

void main() => runApp(Survey());

class Survey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SurveyScreen(),
    );
  }
}

class SurveyScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController foodController = TextEditingController();

  void select(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SurvEntry(
          name: nameController.text,
          age: ageController.text,
          color: colorController.text,
          food: foodController.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project 03 – Survey – Jaden Addae '),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: colorController,
              decoration: InputDecoration(labelText: 'Favorite Color'),
            ),
            TextField(
              controller: foodController,
              decoration: InputDecoration(labelText: 'Favorite Food'),
            ),
            TextButton(
              onPressed: () => select(context),
              child: Text('Click to Submit'),
              style: TextButton.styleFrom(primary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
