// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  var filename;

  ImageDetails(path) {
    this.filename = path;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Image.network('http://192.168.0.101:1337' + filename),
      ),
    );
  }
}
