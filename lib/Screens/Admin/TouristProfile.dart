import 'package:flutter/material.dart';
import 'package:tt/Screens/Tourist/Tourist/AutoPhotoLoader.dart';


class TouristProfileDetails extends StatefulWidget {
  List list;
  int index;
  TouristProfileDetails({this.index,this.list});
  @override
  State<StatefulWidget> createState() => TouristProfileDetailsState();
}

class TouristProfileDetailsState extends State<TouristProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("${widget.list[widget.index]['name']}",),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.orangeAccent.withOpacity(0.3)
        ),
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent.withOpacity(0.3)
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top:15.0),
                    ),
                    Card(
                        child: Container(
                          decoration: BoxDecoration(
                  color: Colors.orangeAccent.withOpacity(0.3)
                ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top:15.0),   
                          ),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profileAvatar.jpg"),
                            radius: 80.0,
                          ),
                          ListTile(
                            // contentPadding: EdgeInsets.only(left: 150.0),
                            title: Text(
                              "${widget.list[widget.index]['name']}",
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text(
                              "${widget.list[widget.index]['email']}",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ),

                            isThreeLine: true,
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.teal,
                          child: ListTile(
                            title: Text("Trips :"),
                            trailing: Text( "${widget.list[widget.index]['NIC']}",),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.teal,
                          child: ListTile(
                            title: Text("Current Rating :"),
                            trailing: Text( "${widget.list[widget.index]['username']}",),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.teal,
                          child: ListTile(
                            title: Text("Current Badge :"),
                            trailing: Icon(Icons.card_travel),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Photo album"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context)=>CarouselPhotoLoader()) );
        },
        backgroundColor: Colors.teal,
        icon: Icon(Icons.photo_album),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
