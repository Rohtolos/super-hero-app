import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hero_app/widget/search.dart';
import 'package:hero_app/page/heropage.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final wordBloc = BlocProvider.of<WordBloc>(context);
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: TextField(
        autocorrect: true,
        onSubmitted: (String name) => {
          Search(name: name),
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HeroPage(),
            ),
          )
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

Future<String>(String name) async {
  return '';
  //TODO : handle api request here
}
