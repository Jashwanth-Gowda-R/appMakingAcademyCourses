// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:quotes_app/custom-widgets/image_card.dart';

class ImageList extends StatefulWidget {
  const ImageList({Key key}) : super(key: key);

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  var imageList = [];

  getdata() {
    http
        .get(Uri.parse('http://192.168.0.101:1337/quotes-flutter-apps'))
        .then((res) {
      // print(res.body);
      setState(() {
        imageList = jsonDecode(res.body);
      });
      print(imageList);
    }).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Shani Quotes')),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                getdata();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            ImageCard('assets/images/1.jpg'),
            ImageCard('assets/images/2.jpg'),
            ImageCard('assets/images/3.jpg'),
            ImageCard('assets/images/4.jpg'),
            ImageCard('assets/images/5.jpg'),
            ImageCard('assets/images/6.jpg'),
            ImageCard('assets/images/7.jpg'),
            ImageCard('assets/images/8.jpg'),
            ImageCard('assets/images/9.jpg'),
            ImageCard('assets/images/10.jpg'),
            ImageCard('assets/images/11.jpg'),
            ImageCard('assets/images/12.jpg'),
          ],
        ),
      ),
    );
  }
}
