import 'package:flutter/material.dart';
import 'package:hero_app/page/home.dart';

class HeroPage extends StatelessWidget {
  final String imageUrl;

  HeroPage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Heroes forever",
      home: Scaffold(
        body: Column(
          children: [
            Image.network(imageUrl),

          ],
        ),
      ),
    );
  }
}
