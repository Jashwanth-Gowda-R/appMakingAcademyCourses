import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
