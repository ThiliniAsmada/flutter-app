import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:tt/Screens/Admin/InquiryDetails.dart';

class ViewInquiry extends StatefulWidget {
  @override
  _ViewInquiryState createState() => _ViewInquiryState();
}

class _ViewInquiryState extends State<ViewInquiry> {
  
  Future<List> getData() async {
    final response= await http.get("http://10.0.2.2/public_html/getdata.php");
    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Inquiries"),),
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
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
              builder: (BuildContext context) => new InquiryDetails(list: list, index: i,)
              )
              ),
          
          child: new Card(
          child: new ListTile(
            title: new Text(list[i]['name']),
            leading: new Icon(Icons.person),
            subtitle: new Text("Experience : ${list[i]['user_id']}\nCategory : ${list[i]['address']}"),
      

          ),
          )
          )
        );
      },
      
    );
  }
}