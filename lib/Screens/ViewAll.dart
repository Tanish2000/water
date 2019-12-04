
import 'package:flutter/material.dart';


class ViewAll extends StatefulWidget {


  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<ViewAll> {
  List categoryList=
  ['ssssssss']
  ;
  Map data;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Water",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.info_outline,color: Colors.black,),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(Icons.menu,color: Colors.black),
      ),
      body: Text("all bottles")
    );
  }
}
