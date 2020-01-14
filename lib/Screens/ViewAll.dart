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
      body: GridView.count(
        crossAxisCount: columnCount,
        children: List.generate(
          7,
              (int index) {
            return Container(

                child: Stack(
                  children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 170,
                                width: 200,
                                decoration: new BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [Colors.white,Colors.blue[100], Colors.blue]),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.blue,
                                        blurRadius: 3.0,
                                      ),
                                    ],
                                    color: Colors.lightBlueAccent[200],
                                    borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(10.0),
                                      topRight: const Radius.circular(10.0),
                                      bottomLeft: const Radius.circular(10.0),
                                      bottomRight: const Radius.circular(10.0),
                                    )),

                                    child: Container(
                                      child: Image.asset("assets/2.png"),
                                    ),
                              ),
                            ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15,0,0,30),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text("Nestle",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                    )
                  ],
                ),
            );
          },
        ),
      ),
    );
  }
}