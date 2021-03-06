import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        fontFamily: 'Itim',
      ),
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/bg.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
            child: BodyLayout(),
          ),
        ],
      )),
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
        title: Text(
          'PORTFOLIO',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 25,
            fontFamily: 'Anton',
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage(
            'images/pic.jpg',
          ),
        ),
      ),
      ListTile(
        title: Text(
          'Aryan Khubchandani',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w600,
            fontFamily: 'Anton',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Card(
          color: Colors.black54,
          elevation: 5,
          child: (InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                      size: 35,
                    ),
                    Text(
                      '+91 9999401575',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: openPhone)),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Card(
          color: Colors.black54,
          elevation: 5,
          child: (InkWell(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.mail,
                      color: Colors.yellow,
                      size: 35,
                    ),
                    Text(
                      'aryan.khubchandani@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              onTap: openMail)),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
        child: Card(
          color: Colors.black54,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.linkedin),
                  iconSize: 40,
                  color: Colors.blue,
                  onPressed: openLi,
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.github),
                  iconSize: 40,
                  color: Colors.white,
                  onPressed: openGit,
                ),
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    iconSize: 40,
                    color: Colors.pink,
                    onPressed: openIg),
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Card(
          color: Colors.black54,
          elevation: 0,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.userCircle,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      " ABOUT ME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Anton',
                      ),
                    ),
                  ],
                ),
                Text(
                  "\nI'm Aryan, an enthusiastic fresher living in Noida, Delhi NCR who wants to become the best in my field by hard work, perseverance, willingness to learn and also gaining exposure in the field. I have developed a keen interest in programming which drives my desire to accomplish great things in my career. I am looking forward to enhance my technical knowledge by exploring diffferent types of projects by implementing them.\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Card(
          color: Colors.black54,
          elevation: 0,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.userGraduate,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      ' EDUCATION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Anton',
                      ),
                    ),
                  ],
                ),
                Text(
                  "\n",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.university,
                  size: 60,
                  color: Colors.white,
                ),
                Text(
                  '\nVellore Institute of Technology, Vellore',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Anton',
                  ),
                ),
                Text(
                  "\nI am currently a fresher in VIT Vellore, pursuing a B.Tech degree in Commputer Science.\n\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.school,
                  size: 55,
                  color: Colors.white,
                ),
                Text(
                  "\nDelhi Public School Indirapuram",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Anton',
                  ),
                ),
                Text(
                  "\nI completed my schooling from DPS Indirapuram. I scored 97% in PCM in class XII Boards.\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Card(
            color: Colors.black54,
            elevation: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.code,
                        size: 30,
                        color: Colors.white,
                      ),
                      Text(
                        '  SKILLS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Anton',
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\nI didn't have any experience in coding in my school life, but I started to work on it since the college started and here are the languages I have tried my hands on so far ( and trying to improve my skills further in them):\n ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image(
                                    image: AssetImage(
                                      'images/c.png',
                                    ),
                                    width: 60.0,
                                    height: 60.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  " C",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image(
                                    image: AssetImage('images/python.png'),
                                    width: 60.0,
                                    height: 60.0,
                                  ),
                                ),
                              ),
                              Text(
                                " Python",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 10),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image(
                                    image: AssetImage('images/dart.png'),
                                    height: 60.0,
                                    width: 60.0,
                                  ),
                                ),
                              ),
                              Text(
                                " Dart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 15, 10),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image(
                                    image: AssetImage('images/html.png'),
                                    height: 60.0,
                                    width: 60.0,
                                  ),
                                ),
                              ),
                              Text(
                                "  HTML",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 15, 10),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image(
                                    image: AssetImage('images/flutter.png'),
                                    height: 60.0,
                                    width: 60.0,
                                  ),
                                ),
                              ),
                              Text(
                                " Flutter",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 15, 10),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image(
                                    image: AssetImage('images/css.png'),
                                    height: 60.0,
                                    width: 60.0,
                                  ),
                                ),
                              ),
                              Text(
                                "CSS",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 20, 15, 10),
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white60,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image(
                                    image: AssetImage('images/kotlin.png'),
                                    height: 60.0,
                                    width: 60.0,
                                  ),
                                ),
                              ),
                              Text(
                                " Kotlin",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Card(
          color: Colors.black54,
          elevation: 0,
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.gamepad,
                      size: 30,
                      color: Colors.white,
                    ),
                    Text(
                      '  HOBBIES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Anton',
                      ),
                    ),
                  ],
                ),
                Text(
                  "\nI am a football enthusiast, but I am also up to play any sport at any given time. I also have interest in cooking and I like to try out new dishes every now and then. I also enjoy photography. In my chill time, I usually prefer to listen to music or play games on my console\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
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

openLi() async {
  const url = 'https://www.linkedin.com/in/aryan-khubchandani-948735203/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

openGit() async {
  const url = 'https://github.com/AryanKhubchandani';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

openIg() async {
  const url = 'https://www.instagram.com/aryan.khubchandani/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
