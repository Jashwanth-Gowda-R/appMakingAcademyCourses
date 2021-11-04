// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
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
            GestureDetector(
              onTap: () {
                Get.to(ImageDetails());
              },
              child: Container(
                child: Image.asset(
                  'assets/images/1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/3.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/4.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/5.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/6.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/7.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/8.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/9.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/10.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/11.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/12.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
