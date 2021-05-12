import 'package:flutter/material.dart';
import './drawer.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;

class Home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> names = [];
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot) {
            var showData = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 10,
                  color: Colors.blueGrey[300],
                  child: ListTile(
                    title: Text(
                      showData["event_titles"][index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
              itemCount: 15,
            );
          },
          future: DefaultAssetBundle.of(context)
              .loadString('assets/json/user.json'),
        ),
      ),
    );
  }
}
