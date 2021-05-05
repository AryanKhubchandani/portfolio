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
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Portfolio')),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
          child: BodyLayout(),
        ),
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
        title: Text(
          'Hey There!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
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
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      Card(
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
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            onTap: openPhone)),
      ),
      Card(
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
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            onTap: openPhone)),
      ),
      Card(
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
      Card(
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
                    ),
                  ),
                ],
              ),
              Text(
                "\nI'm Aryan, an enthusiastic fresher living in Noida, Delhi NCR who wants to become the best in my field by hard work, perseverance, willingness to learn and also gaining exposure in the field. I have developed a keen interest in programming which drives my desire to accomplish great things in my career. I am looking forward to enhance my technical knowledge by exploring diffferent types of projects by implementing them.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
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
                    ),
                  ),
                ],
              ),
              Icon(
                FontAwesomeIcons.university,
                size: 30,
                color: Colors.white,
              ),
              Text(
                'Vellore Institute of Technology, Vellore',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "\nI am currently a fresher in VIT Vellore, pursuing a B.Tech degree in Commputer Science.\n\n",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Icon(
                FontAwesomeIcons.school,
                size: 30,
                color: Colors.white,
              ),
              Text(
                "Delhi Public School Indirapuram",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "\nI completed my schooling from DPS Indirapuram. I scored 97% in PCM in class XII Boards.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
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
                    ),
                  ),
                ],
              ),
              Text(
                "\nI didn't have any experience in coding in my school life, but I started to work on it since the college started and here are the languages I have tried my hands on so far ( and trying to improve my skills further in them): Python, C, Dart, Kotlin, HTML, CSS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Image(
                                image: AssetImage('c.png'),
                                height: 80.0,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "C",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sniglet",
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.redAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Image(
                                image: AssetImage('python.png'),
                                height: 80.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "     Python",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sniglet",
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Image(
                                image: AssetImage('dart.png'),
                                height: 80.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "     Dart",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sniglet",
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Image(
                                image: AssetImage('html.png'),
                                height: 80.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "    HTML",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sniglet",
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Image(
                                image: AssetImage('flutter.png'),
                                height: 80.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "    Flutter",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sniglet",
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.greenAccent,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Image(
                                image: AssetImage('css.png'),
                                height: 80.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "    CSS",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sniglet",
                              fontSize: 17,
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
        ),
      ),
      Card(
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
                    ),
                  ),
                ],
              ),
              Text(
                "\nI am a football enthusiast, but I would be up to play any sport at any given time. I also have interest in cooking and I like to try out new dishes every now and then. I also enjoy photography. In my chill time, I usually prefer to listen to music or play games on my console",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
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
