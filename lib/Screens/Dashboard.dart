
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:water/Screens/PatmentScreen.dart';
import 'package:water/Screens/ViewAll.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:water/components/Cards.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _auth=FirebaseAuth.instance;
  FirebaseUser loggedInUser;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser()async{
    try{
      final user=await _auth.currentUser();
      if(user!=null){
        loggedInUser=user;
      }
    }catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: SingleChildScrollView(
          child: Column(

            children: <Widget>[

              Container(

                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SizedBox(
                    height: 200.0,
                    width: 400.0,
                    child: Container(
                      decoration:
                      BoxDecoration(border: Border.all(color: Colors.blue)),
                      child: Carousel(
                        images: [
                          NetworkImage(
                              'https://previews.123rf.com/images/somchaij/somchaij1602/somchaij160200058/52082550-cold-water-bottles-on-ice-cubes.jpg'),
                          NetworkImage(
                              'http://yesofcorsa.com/wp-content/uploads/2018/01/Mineral-Water-Wallpaper-For-PC.jpg'),
                          NetworkImage(
                              'https://cdn.shopify.com/s/files/1/1891/6405/products/shop-online-from-france-daily-essentials-evian-mineral-water-1-25-l-fresh-food-in-dubai-and-abu-dhabi-618238902296_480x480.jpg?v=1536789224'),
                          NetworkImage(
                              'http://yesofcorsa.com/wp-content/uploads/2018/01/Mineral-Water-Best-Wallpaper-1024x576.jpg'),
                          NetworkImage(
                              'http://yesofcorsa.com/wp-content/uploads/2018/01/Mineral-Water-Wallpaper-Full-HD.jpg'),
                        ],
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                  leading: Text("Suggested for you",style: TextStyle(
                    fontWeight: FontWeight.bold
                  )),
                  trailing: ClipRRect(
                    borderRadius: new BorderRadius.circular(50.0),
                    child: RaisedButton(
                      child: const Text('View All',style: TextStyle(
                          color: Colors.white
                      ),
                      ),
                      color: Theme.of(context).accentColor,
                      elevation: 2.0,
                      splashColor: Colors.blueGrey,
                      onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => ViewAll()));
                      },
                    ),
                  )
              ),
              Container(
                  color: Color.fromRGBO(255, 255, 255, 100),
                  padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                  height: 180.0,
                  child: ListView(

                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[


                      InkWell(
                        onTap: (){
                          Navigator.push(context, new MaterialPageRoute(builder: (context) => PaymenScreen()));

                        },
                        child: Container(
//                              decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.blueAccent)),
                            child: Image.asset('assets/1.png')),
                      ),
                      SizedBox(width: 0.0),
                      Container(
//                              decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.blueAccent)),
                          child: Image.asset('assets/2.png')),
                      SizedBox(width: 0.0),
                      Container(
//                              decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.blueAccent)),
                          child: Image.asset('assets/3.png')),
                      SizedBox(width: 10.0),
                      Container(
//                              decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.blueAccent)),
                          child: Image.asset('assets/4.png')),
                      SizedBox(width: 50.0),
                      Container(
//                              decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.blueAccent)),
                          child: Image.asset('assets/5.png')),
                      SizedBox(width: 50.0),
                      Container(
//                              decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.blueAccent)),
                          child: Image.asset('assets/6.png')),
                      SizedBox(width: 30.0),

                    ],
                  )),
              Container(
                height: 400,
                width: 400,
                child: Cards(),
              )

            ],


          ),
        )
    );

  }
}