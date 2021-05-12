import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/about.dart';

//255,229,180
void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blueGrey,
        primaryColor: Colors.teal[600],
      ),
      routes: {
        '/': (_) => Home(),
        '/about': (_) => About(),
      },
    );
  }
}
