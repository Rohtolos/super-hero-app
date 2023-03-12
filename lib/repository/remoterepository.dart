import 'dart:convert';
import 'package:hero_app/model/datamodel.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class RemoteRepository {
  final String url = "https://superheroapi.com/api/694257225774622/search";

  Future<DataModel> getResponse(String name) async {
    var uri = Uri.parse('$url/$name');
    Response response = await http.get(uri);
    Map<String, dynamic> x = jsonDecode(response.body);

    return DataModel.fromJson(x);
  }

}
