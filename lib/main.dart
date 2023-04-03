import 'package:flutter/material.dart';

import 'Question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      'q': 'what\'s your favotire color?',
      'ans': ['red', 'blue', 'black', 'white']
    },
    {
      'q': 'what\'s your favotire animal?',
      'ans': ['bat', 'cat', 'rat', 'fish']
    },
    {
      'q': 'what\'s your favotire brand?',
      'ans': ['hp', 'dell', 'asus', 'acer']
    },
  ];

  int _index = 0;
  void _ansQues() {
    if (_index < questions.length) {
      print(" we have more question..");
    }
    setState(() {
     _index++;
    });
    print("question answered");
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    // print(questions[_index]['q']);

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('my app'),
          ),
          body: _index < questions.length? Column(
            children: [
              Question(questions[_index]['q'] as String),
              ...(questions[_index]['ans'] as List<String>).map(
                (e) {
                  return Answer(_ansQues, e);
                },
              ).toList()
            ],
          ):Center(child: Text("you did it!"),)
          ),
    );
  }
}
