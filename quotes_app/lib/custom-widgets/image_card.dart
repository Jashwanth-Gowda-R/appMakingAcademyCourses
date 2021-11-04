import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:quotes_app/image_details.dart';
import 'package:get/get.dart';

class ImageCard extends StatelessWidget {
  var filename;
  ImageCard(path) {
    this.filename = path;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ImageDetails(this.filename));
      },
      child: Container(
        child: Image.asset(
          this.filename,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
