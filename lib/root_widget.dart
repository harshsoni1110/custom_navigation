import 'package:custom_navigation/route_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Root screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Root screen"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(routeTwo);
            },
            child: Text("Go to Screen 2"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(routeThree);
            },
            child: Text("Go to Screen 3"),
          )
        ],
      ),
    );
  }
}
