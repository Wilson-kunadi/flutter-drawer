import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return uiScreen();
  }
}

class uiScreen extends StatelessWidget {
  Color gradientStart = Colors.orange[200];
  Color gradientEnd = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView(
          children: <Widget>[
            ClipPath(
              clipper: MyCustomClip(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                height: 0.34 * MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 65,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            padding: EdgeInsets.all(5),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("images/Profile.jpg"),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Sekut WKWK",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                buildRowBelowName("Verified", Icons.check),
                                buildRowBelowName("Indonesia, Jakarta",
                                    Icons.person_pin_circle),
                                buildRowBelowName(
                                    "24 Years Old", Icons.timelapse),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            contentCard(
              "Address",
              "subtitle subtitle subtitle subtitle subtitle subtitle subtitle subtitle ",
              Icon(Icons.my_location),
            ),
            contentCard(
              "Profession",
              "Pegawai Swasta",
              Icon(Icons.work),
            ),
            contentCard(
              "Date of Birth",
              "20-02-1992",
              Icon(Icons.date_range),
            ),
            contentCard(
              "Nation",
              "Indonesia",
              Icon(Icons.flag),
            ),
            contentCard(
              "Date of Join",
              "20-02-2020",
              Icon(Icons.card_membership),
            ),
            contentCard(
              "ID Card Number",
              "XXXXXXXXXXXXXX200",
              Icon(Icons.perm_identity),
            ),
          ],
        ),
      ),
    );
  }

  Card contentCard(String title, String subtitle, Icon icon) {
    return Card(
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: icon,
        ),
        title: Text(
          title,
          maxLines: 1,
        ),
        subtitle: Text(
          subtitle,
          textAlign: TextAlign.justify,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        isThreeLine: true,
      ),
    );
  }

  Row buildRowBelowName(String text, IconData icon) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class MyCustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.85);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height,
      size.width,
      size.height * 0.85,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
