import 'dart:io';

import 'package:flutter/material.dart';

class SeeIdPic extends StatelessWidget {
  const SeeIdPic({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.file(File(imagePath)),
    );
  }
}
