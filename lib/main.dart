import 'package:flutter/material.dart';

// void main() {
//   runApp(MyFlutterApp());
// }
void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFlutterAppState();
  }
}

class MyFlutterAppState extends State<MyFlutterApp> {
  int questionIndex = 0;
  void answerQustion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'Whats\s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQustion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!'),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chosen!');
                },
              ),
            ],
          )),
    );
  }
}
