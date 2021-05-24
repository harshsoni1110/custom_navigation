import 'package:custom_navigation/root_widget.dart';
import 'package:custom_navigation/router_utility.dart';
import 'package:custom_navigation/second_widget.dart';
import 'package:custom_navigation/third_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigators',
      onGenerateInitialRoutes: defaultGenerateInitialRoutes,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

List<Route<dynamic>> defaultGenerateInitialRoutes(String initialRouteName) {
  List<MaterialPageRoute> routes = new List();
  routes.add(MaterialPageRoute(builder: (context) => RootWidget()));
  routes.add(MaterialPageRoute(builder: (context) => SecondWidget()));
  routes.add(MaterialPageRoute(builder: (context) => ThirdWidget()));
  return routes;
}
