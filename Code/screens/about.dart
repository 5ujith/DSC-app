import 'package:flutter/material.dart';
import './drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About us'),
      ),
      drawer: MainDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/DSC.jpg'),
                height: 200,
                width: double.infinity,
              ),
              Container(
                child: Align(
                    child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                  child: Text(
                    'Developer Student Clubs is a community where everyone is welcome. We help students bridge the gap between theory and Practice and grow their knowledge by providing a peer-to-peer learning environment, by conducting workshops, study jams and building solutions for local businesses. Developer Student Clubs is a program supported by Google Developers.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    launch("https://dscsastra.com");
                  },
                  child: Container(
                    height: 40.0,
                    width: 150,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                        child: Text("Visit dscsastra.com",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
