import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './about.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
      child: Drawer(
        elevation: 16.0,
        child: Container(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Developer Student Clubs Community',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo.jpg'),
                  //child: Text('DSC'),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
              ListTile(
                title: Text('About us'),
                leading: Icon(Icons.info_outline_rounded),
                onTap: () {
                  Navigator.of(context).pushNamed('/about');
                },
              ),
              Container(
                padding: EdgeInsets.fromLTRB(120, 250, 10, 10),
                child: ListTile(
                  title: Text(
                    'Made by Sujith',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.favorite, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
