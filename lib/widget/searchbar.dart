import 'package:flutter/material.dart';
import 'package:hero_app/repository/remoterepository.dart';
import '../model/datamodel.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);
  RemoteRepository remoteRepository = RemoteRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: TextField(
        autocorrect: true,
        onSubmitted: (String name) async {
          DataModel dataModel = await remoteRepository.getResponse(name);
        },
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
            filled: false,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Your hero...',
            hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 18)),
      ),
    );
  }
}


