import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List questions = [
    {
      "question": "How many World cup india as won in t20?",
      "options_a": "4",
      "options_b": "3",
      "options_c": "1",
      "options_d": "5",
      "answer": "1"
    },
    {
      "question": "How many colors in Google Logo?",
      "options_a": "4",
      "options_b": "3",
      "options_c": "5",
      "options_d": "6",
      "answer": "4"
    },
    {
      "question": "How many cups did CSK won in ipl?",
      "options_a": "4",
      "options_b": "3",
      "options_c": "5",
      "options_d": "6",
      "answer": "4"
    },
    {
      "question": "which is the team to win the wcup in year 1983",
      "options_a": "Sri Lanka",
      "options_b": "Pakistan",
      "options_c": "India",
      "options_d": "australia",
      "answer": "India"
    },
  ];
  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${questions[currentIndex]["question"]}"),
              ElevatedButton(
                onPressed: () {},
                child: Text("${questions[currentIndex]["options_a"]}"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("${questions[currentIndex]["options_b"]}"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("${questions[currentIndex]["options_c"]}"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("${questions[currentIndex]["options_d"]}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
