import 'package:flutter/material.dart';

class mascot extends StatefulWidget {
  @override
  _mascotState createState() => _mascotState();
}

class _mascotState extends State<mascot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              color: Colors.deepPurple[600],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 50, bottom: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 50,
                      child: Image(
                        image: AssetImage("images/mascot.png"),
                      ),
                    ),
                  ),
                  Text(
                    "LearnCodeOnline",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.18,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getCard(
                  "Online Course",
                  AssetImage("images/vision.png"),
                ),
                getCard(
                  "Offline Bootcamp",
                  AssetImage("images/trophy.png"),
                ),
                getCard(
                  "Coding Challenges",
                  AssetImage("images/note.png"),
                ),
                getCard(
                  "Tedx Talk",
                  AssetImage("images/tedx.png"),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Text(
                      "LCO app is designed for those who love to learn on the go. You will love to watch videos in your app. Save videos offline, ask questions or take mock test.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Divider(),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 0.20,
                    child: Text(
                      "Our app gives you seamless learning experience as well as a community of like minded programmers. With active community of over 100K programmers, you will love it!",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Card getCard(String title, AssetImage asIm) {
    return Card(
      elevation: 5,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        padding: EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: asIm,
                height: 50,
                width: 50,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class mascotClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, size.height * 0.75);
//     path.quadraticBezierTo(
//         size.width * 0.3, size.height, size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
