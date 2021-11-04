// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quotes_app/constants.dart';
import 'package:share/share.dart';

class ImageDetails extends StatelessWidget {
  var filename;

  ImageDetails(path) {
    this.filename = path;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.network(
                  Constants().ipaddress + filename,
                )),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
                onPressed: () {
                  Share.share(Constants().ipaddress + filename);
                },
                icon: Icon(
                  Icons.share,
                )),
          )
        ],
      )),
    );
  }
}
