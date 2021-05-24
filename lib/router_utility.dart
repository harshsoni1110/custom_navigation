import 'package:custom_navigation/root_widget.dart';
import 'package:custom_navigation/route_constants.dart';
import 'package:custom_navigation/second_widget.dart';
import 'package:custom_navigation/third_widget.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case routeRoot:
      return MaterialPageRoute(builder: (context) => RootWidget());
    case routeTwo:
      return MaterialPageRoute(builder: (context) => SecondWidget());
    case routeThree:
      return MaterialPageRoute(builder: (context) => ThirdWidget());
    default:
      return MaterialPageRoute(builder: (context) => RootWidget());
  }
}
