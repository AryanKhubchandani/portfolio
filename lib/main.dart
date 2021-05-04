import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      Padding(
        padding: const EdgeInsets.all(21.0),
        child: CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(
            'images/pic.jpg',
          ),
        ),
      ),
      ListTile(
        title: Text(
          'I am Aryan Khubchandani',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      Card(
          color: Colors.white,
          elevation: 5,
          child: Stack(children: [
            (InkWell(onTap: openPhone)),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  Text(
                    '+91 9999401575',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ])),
      Card(
        color: Colors.white,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.mail,
                color: Colors.yellow,
              ),
              Text(
                'aryan.khubchandani@gmail.com',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
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

openPhone() async {
  const url = 'tel:+91 9999401575';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

openMail() async {
  const url = 'mailto:aryan.khubchandani@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
