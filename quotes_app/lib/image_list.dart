// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:quotes_app/custom-widgets/image_card.dart';
import 'package:quotes_app/image_details.dart';
import 'package:get/get.dart';

class ImageList extends StatelessWidget {
  const ImageList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Shani Quotes')),
        backgroundColor: Colors.black,
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
