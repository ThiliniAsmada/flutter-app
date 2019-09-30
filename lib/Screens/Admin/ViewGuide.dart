import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class ViewGuide extends StatefulWidget {
  @override
  _ViewGuideState createState() => _ViewGuideState();
}

class _ViewGuideState extends State<ViewGuide> {
  
  Future<List> getData() async {
    final response= await http.get("http://10.0.2.2/public_html/getdata.php");
    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("View Guide"),),
      body: new FutureBuilder<List>(
        future:getData(),
        builder: (context, snapshot){
          if(snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
          ? new ItemList(list: snapshot.data,)
          :new Center(child: new CircularProgressIndicator(),);
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {

  List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list ==null? 0 : list.length,
      itemBuilder: (context, i){
        return new ListTile(
          title: new Text(list[i]['name']),
          leading: new Icon(Icons.person),
          subtitle: new Text("Experience : ${list[i]['user_id']}\nCategory : ${list[i]['address']}"),
      

        );
      },
      
    );
  }
}