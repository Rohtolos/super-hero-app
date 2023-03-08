import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final url;

  ImageBox({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.network(url.toString()));
  }
}
