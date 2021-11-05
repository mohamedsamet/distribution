import 'package:distribution/counter.dart';
import 'package:distribution/random-words.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MainScafold extends StatefulWidget {
  const MainScafold({Key? key}) : super(key: key);

  @override
  _MainScafoldState createState() => _MainScafoldState();
}

class _MainScafoldState extends State<MainScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.account_tree)),
        title: const Text('توزيع', textDirection: TextDirection.ltr,),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.ac_unit_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.alarm_on_sharp)),
        ],
      ),
      body: RandomWords(),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        tooltip: 'Add',
      ),
    );
  }
}
