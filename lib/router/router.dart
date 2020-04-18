import 'package:drawer_app/MyHomePage.dart';
import 'package:drawer_app/category.dart';
import 'package:drawer_app/mascot.dart';
import 'package:drawer_app/profile.dart';
import 'package:flutter/material.dart';

class Router {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
            builder: (_) => MyHomePage(currentPage: settings.name));
      case homeMascot:
        return MaterialPageRoute(builder: (_) => mascot());
      case homeCategory:
        return MaterialPageRoute(builder: (_) => Category());
      case homeProfile:
        return MaterialPageRoute(builder: (_) => profile());
      default:
        return MaterialPageRoute(builder: (_) => routeNotFound(settings.name));
    }
    ;
  }

  Scaffold routeNotFound(String settings) {
    return Scaffold(
      body: Center(
        child: Text("Route Not Found For ${settings}"),
      ),
    );
  }

  checkRoute(String currentPage, String route, BuildContext context) {
    return currentPage == route
        ? Navigator.pop(context)
        : Navigator.pushNamed(context, route);
  }
}

const String homeRoute = '/';
const String homeMascot = '/mascot';
const String homeCategory = '/category';
const String homeProfile = '/profile';
