import 'package:drawer_app/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:drawer_app/router/router.dart';

void main(List<String> args) {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.deepPurple,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Drawer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(currentPage: homeRoute),
      onGenerateRoute: Router().generateRoute,
      initialRoute: homeRoute,
      // routes: <String, WidgetBuilder>{
      //   "/home": (BuildContext context) => MyHomePage(),
      //   "/category": (BuildContext context) => Category(),
      //   "/profile": (BuildContext context) => profile(),
      //   "/mascot": (BuildContext context) => mascot(),
      // },
    );
  }
}
