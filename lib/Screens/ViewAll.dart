import 'dart:convert';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';

class ViewAll extends StatefulWidget {

  static const routeName = '/categories';
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<ViewAll> {

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
                  child: FadeInAnimation(


                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(10,20,10,30),
                         child: Container(

                           child: Container(
                             decoration: new BoxDecoration(
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.blue,
                                     blurRadius: 2.0,
                                   ),
                                 ],

                                 color:
                                 Colors.lightBlueAccent[200],
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
                         ),
                       ),
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