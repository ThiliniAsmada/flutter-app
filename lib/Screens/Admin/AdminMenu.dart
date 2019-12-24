import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tt/Screens/Tourist/Tourist/TripRequest.dart';
import 'package:http/http.dart' as http;
import 'package:tt/Screens/Tourist/Tourist/TripStatus.dart';
import 'package:tt/utils/ResponseData.dart';

class AdminMenu extends StatefulWidget {
  @override
  _AdminMenuState createState() => _AdminMenuState();
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class _AdminMenuState extends State<AdminMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            leading:     Icon(Icons.menu),
            title: Text("Admin Menu"),
            backgroundColor: Colors.indigo,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.person)),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // titleSection1,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      // child: Text('Hello World!'),
                    ),
                    buttonSection1,
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      // child: Text('Hello World!'),
                    ),
                    buttonSection2,
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      // child: Text('Hello World!'),
                    ),
                  ],
                ),
                titleSection2,
                titleSection3
              ],
            ),
          )),
    );
  }
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
  ],
);

Widget buttonSection1 = Container(
  padding: const EdgeInsets.only(top: 30),
  decoration: BoxDecoration(  
    border: Border.all(width: 5, color: Colors.black38),
    borderRadius: const BorderRadius.all(const Radius.circular(8)),
  ),
  child: Column(
    // adding: const EdgeInsets.only(bottom: 8),
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.people, 'Guides'),
      // _buildButtonColumn(color, Icons.people_outline, 'Tourists'),
      Text("99"),
      stars
      //  _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  ),
);

Widget buttonSection2 = Container(
  padding: const EdgeInsets.only(top: 30),
  decoration: BoxDecoration(  
    border: Border.all(width: 5, color: Colors.black38),
    borderRadius: const BorderRadius.all(const Radius.circular(8)),
  ),
  child: Column(
    // adding: const EdgeInsets.only(bottom: 8),
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.people, 'Tourists'),
      // _buildButtonColumn(color, Icons.people_outline, 'Tourists'),
      Text("250"),
      stars
      //  _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  ),
);

Widget titleSection1 = Container(
  padding: const EdgeInsets.all(32),
  decoration: BoxDecoration(  
    border: Border.all(width: 5, color: Colors.black38),
    borderRadius: const BorderRadius.all(const Radius.circular(8)),
  ),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.grey[500]),
            )
          ],
        ),
      ),
      Column(children: <Widget>[Icon(Icons.star, color: Colors.red[500])]),
      Column(children: <Widget>[
        Text(
          '41',
          style: TextStyle(fontSize: 20.0),
        )
      ]),
    ],
  ),
);

Widget titleSection2 = Container(
  padding: const EdgeInsets.all(32),
  decoration: BoxDecoration(  
    border: Border.all(width: 5, color: Colors.black38),
    borderRadius: const BorderRadius.all(const Radius.circular(8)),
  ),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'New guides',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      Column(children: <Widget>[
        Text(
          '41',
          style: TextStyle(fontSize: 20.0),
        )
      ]),
    ],
  ),
);

Widget titleSection3 = Container(
  padding: const EdgeInsets.all(32),
  decoration: BoxDecoration(  
    border: Border.all(width: 5, color: Colors.black38),
    borderRadius: const BorderRadius.all(const Radius.circular(8)),
  ),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Inquiries',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      Column(children: <Widget>[
        Text(
          '41',
          style: TextStyle(fontSize: 20.0),
        )
      ]),
    ],
  ),
);
