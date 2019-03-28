import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Test'),
        ),
        body: MyStatefulApp(),
      ),
    );
  }
}

class MyStatefulApp extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyStatefulApp> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text('TEST'),
        color: changeColor ? Colors.red : Colors.blue,
        onPressed: () => setState(() => changeColor = !changeColor),
      ),
    );
  }
}
