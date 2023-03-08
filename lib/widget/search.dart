import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hero_app/widget/image.dart';
import 'package:hero_app/functions/coin.dart';

class Search {
  final String name;

  Search({required this.name}) {
    final String uri1 =
        'https://superheroapi.com/api/694257225774622/search/$name';
    final String uri2 =
        'https://superheroapi.com/api/694257225774622/search/$name/image';

    Future<void> getUserData() async {
      var url = Uri.https(uri2);
      var response = await http.get(url);

      var body = response.body;
      Coin coin = Coin.fromJson(jsonDecode(body));
      ImageBox(url: coin);
    }
  }
}
