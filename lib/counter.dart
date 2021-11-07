import 'package:distribution/random-words.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  static const url = '/';
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  void increment() {
    setState(() {
      print('incrementing: $counter');
      counter++;
    });
  }

  void navigate() {
    Navigator.pushNamed(
        context,
        RandomWords.url
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text('Distribution Home'),
        centerTitle: true,
      ),
      body: Material(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  FloatingActionButton(
                      onPressed: navigate,
                      backgroundColor: Colors.deepOrange,
                      splashColor: Colors.green,
                      child: Text('Nav')
                  )
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Icon(Icons.star, color: Colors.green, size: 50),
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                    ),
                    Container(
                      child: Image.asset('assets/icons/img.png', width: 110.0, fit: BoxFit.cover),
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: ElevatedButton(onPressed: increment, child: const Text('Incerment')),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Container(
                    child: Text('Count: $counter', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0)),
                  ),
                ],
              )
            ],
          )
      ),
    );
  }
}
