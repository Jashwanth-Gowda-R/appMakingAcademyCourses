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
      "question": "which is the team to win the wcup in year 1983?",
      "options_a": "Sri Lanka",
      "options_b": "Pakistan",
      "options_c": "India",
      "options_d": "australia",
      "answer": "India",
    },
    {
      "question": "How many World cup india as won in t20?",
      "options_a": "4",
      "options_b": "3",
      "options_c": "1",
      "options_d": "5",
      "answer": "1",
    },
    {
      "question": "How many colors in Google Logo?",
      "options_a": "4",
      "options_b": "3",
      "options_c": "5",
      "options_d": "6",
      "answer": "4",
    },
    {
      "question": "How many cups did CSK won in ipl?",
      "options_a": "4",
      "options_b": "3",
      "options_c": "5",
      "options_d": "6",
      "answer": "4",
    },
    {
      "question": "How many cups did CSK won in ipl?",
      "options_a": "4",
      "options_b": "3",
      "options_c": "5",
      "options_d": "6",
      "answer": "4",
    },
  ];

  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;

  validateAnswer(userInput) {
    if (currentIndex <= questions.length - 1) {
      if (userInput == questions[currentIndex]["answer"]) {
        setState(() {
          rightAnswerCount += 1;
        });
      } else {
        setState(() {
          wrongAnswerCount += 1;
        });
      }
    }
    if (currentIndex != questions.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  reset() {
    setState(() {
      rightAnswerCount = 0;
      wrongAnswerCount = 0;
      currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          body: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    color: Colors.white,
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "${questions[currentIndex]["question"]}",
                      style: const TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]["options_a"]);
                    },
                    child: Text("${questions[currentIndex]["options_a"]}"),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]["options_b"]);
                    },
                    child: Text("${questions[currentIndex]["options_b"]}"),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]["options_c"]);
                    },
                    child: Text("${questions[currentIndex]["options_c"]}"),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      elevation: 0,
                    ),
                    onPressed: () {
                      validateAnswer(questions[currentIndex]["options_d"]);
                    },
                    child: Text("${questions[currentIndex]["options_d"]}"),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "No of questions : ${questions.length}   Right Answer :$rightAnswerCount    Wrong Answer:$wrongAnswerCount",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      reset();
                    },
                    child: const Text("Reset and try again"))
              ],
            ),
          )),
    );
  }
}
