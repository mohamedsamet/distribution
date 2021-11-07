import 'package:distribution/counter.dart';
import 'package:distribution/random-words.dart';
import 'package:flutter/material.dart';

class MainModules extends StatefulWidget {
  const MainModules({Key? key}) : super(key: key);

  @override
  _MainModulesState createState() => _MainModulesState();
}

class _MainModulesState extends State<MainModules> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: MaterialApp(
            initialRoute: '/', routes: {
              Counter.url: (context) => Counter(),
              RandomWords.url: (context) => RandomWords()
        }),
      );
  }
}
