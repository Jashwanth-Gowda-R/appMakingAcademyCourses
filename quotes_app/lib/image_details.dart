// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  var filename;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(filename),
    );
  }
}
