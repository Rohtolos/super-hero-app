import 'package:flutter/material.dart';
import 'package:hero_app/widget/image.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Heroes forever",
      home: Scaffold(
        body: Column(
          children: [
            ImageBox(),
          ],
        ),
      ),
    );
  }
}
