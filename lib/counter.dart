import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
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

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('icons/img.png', width: 110.0,),
            margin: EdgeInsets.symmetric(vertical: 20.0),
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
    );
  }
}
