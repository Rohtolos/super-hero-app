import 'package:flutter/material.dart';
import 'package:hero_app/widget/searchbar.dart';

import '../model/datamodel.dart';
import '../repository/remoterepository.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomePage> {
  final Icon customIcon = const Icon(Icons.search);
  final Widget customSearchBar = const Text('My Personal Journal');
  final RemoteRepository remoteRepository = RemoteRepository();
  String src = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('RohtolosX')),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: TextField(
                autocorrect: true,
                onSubmitted: (String name) async {
                  DataModel dataModel =
                      await remoteRepository.getResponse(name);
                  src = dataModel.url;
                  setState(() {});
                },
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    filled: false,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Your hero...',
                    hintStyle:
                        const TextStyle(color: Colors.blueGrey, fontSize: 18)),
              ),
            ),
            src != '' ? Container(
              child: Image.network(src),
            ) : Container()
          ],
        ),
      ),
    );
  }
}
