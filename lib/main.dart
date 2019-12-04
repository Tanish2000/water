import 'package:flutter/material.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/Login.dart';
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner : false,

    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/Login': (BuildContext context) => new LoginPage()
    },
  ));
}