import 'package:flutter/material.dart';
import 'package:drawer_app/router/router.dart';

class MyHomePage extends StatefulWidget {
  final String currentPage;

  MyHomePage({Key keys, @required this.currentPage}) : super(key: keys);

  @override
  My_HomePageState createState() => My_HomePageState();
}

class My_HomePageState extends State<MyHomePage> {
  final String accountName = "Wilson";
  final String accountEmail = 'wlsknd@yahoo.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(this.accountName),
              accountEmail: Text(this.accountEmail),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purpleAccent[100],
                child: Text(
                  accountName[0],
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(0),
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: <Widget>[
                    ListTile(
                      title: Text("Home"),
                      trailing: Icon(Icons.home),
                      onTap: () => Router()
                          .checkRoute(widget.currentPage, homeRoute, context),
                    ),
                    ListTile(
                      title: Text("Category"),
                      trailing: Icon(Icons.category),
                      onTap: () => Navigator.pushNamed(context, homeCategory),
                    ),
                    ListTile(
                      title: Text("Profile"),
                      trailing: Icon(Icons.insert_emoticon),
                      onTap: () => Navigator.pushNamed(context, homeProfile),
                    ),
                    ListTile(
                      title: Text("Mascot"),
                      trailing: Icon(Icons.contacts),
                      onTap: () => Navigator.pushNamed(context, homeMascot),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("This is Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.control_point),
      ),
    );
  }
}
