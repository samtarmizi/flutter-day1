import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloWorldPage(),
    );
  }
}

class HelloWorldPage extends StatefulWidget {
  @override
  _HelloWorldPageState createState() => _HelloWorldPageState();
}

class _HelloWorldPageState extends State<HelloWorldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        actions: <Widget>[Icon(Icons.add)],
      ),
      body: Container(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Column(children: <Widget>[
                Text("Welcome to MyApp", style: TextStyle(fontSize: 32)),
                Text("This is my first app"),
                FlatButton(
                  child: Text("Press Me"),
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () => {},
                )
              ])))),
    );
  }
}
