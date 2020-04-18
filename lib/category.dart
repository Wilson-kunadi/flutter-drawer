import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.07,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.deepPurple,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Category",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
