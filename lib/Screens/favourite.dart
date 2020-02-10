import 'package:flutter/material.dart';

class favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: favouriteList(),
    );
  }
}



class favouriteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Card(
          child: ListTile(
            title: Text("water 1"),
            subtitle: Text("Test the pure")
          ),

        ),
      ),
    );
  }
}


