import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Portfolio')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return home(context);
  }
}

Widget home(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Hey There!'),
      ),
      ListTile(
        title: Text(
          'I am Aryan Khubchandani',
        ),
      ),
      ListTile(
        title: Text('Contact Number'),
      ),
      ListTile(
        title: Text('Email ID'),
      ),
      ListTile(
        title: Text('Profiles'),
      ),
      ListTile(
        title: Text('About Me'),
      ),
      ListTile(
        title: Text('Education'),
      ),
      ListTile(
        title: Text('Languages'),
      ),
    ],
  );
}
