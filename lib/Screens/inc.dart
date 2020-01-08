import 'package:flutter/material.dart';

int _n = 0;


class Number extends StatefulWidget {
  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {

  void add() {
    setState(() {
      _n++;
    });
  }


  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new FloatingActionButton(
              heroTag: "btn1",
              onPressed: add,
              child: new Icon(Icons.add, color: Colors.black,),
              backgroundColor: Colors.white,),

            new Text('$_n',
                style: new TextStyle(fontSize: 60.0)),

            new FloatingActionButton(
              heroTag: "btn2",
              onPressed: minus,
              child: new Icon(
                  const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                  color: Colors.black),
              backgroundColor: Colors.white,),
          ],
        ),
      ),
    );
  }
}
