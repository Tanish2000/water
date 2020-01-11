import 'dart:convert';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';

int _n = 0;


class ViewAll extends StatefulWidget {
  static const routeName = '/categories';
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ViewAll> {
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    int columnCount = 2;
    return Scaffold(
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: columnCount,
          children: List.generate(
            50,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 1000),
                columnCount: columnCount,
                child: ScaleAnimation(
                  child: Column(
                    children: <Widget>[
                      FadeInAnimation(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 110,
                                width: 200,
                                decoration: new BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue,
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                    color: Colors.lightBlueAccent[200],
                                    borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(10.0),
                                      topRight: const Radius.circular(10.0),
                                      bottomLeft: const Radius.circular(10.0),
                                      bottomRight: const Radius.circular(10.0),
                                    )),
                                child: GestureDetector(
                                  child: Container(
                                    child: Image.asset("assets/2.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: new Center(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: new FloatingActionButton(
                                    heroTag: "btn1",
                                    onPressed: add,
                                    child: new Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0)),
                                      border: Border.all(
                                        color: Colors.blueAccent,
                                        width: 3,
                                      )),
                                  child: Center(
                                    child: new Text('$_n',
                                        textAlign: TextAlign.center,
                                        style: new TextStyle(fontSize: 20.0)),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: new FloatingActionButton(
                                    heroTag: "btn2",
                                    onPressed: minus,
                                    child: new Icon(Icons.minimize,
                                        color: Colors.black),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}