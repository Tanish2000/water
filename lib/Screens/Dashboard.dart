import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:water/Screens/ViewAll.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              body: Column(
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
                          )),



                  ),

                  SizedBox(
                    height: 40,
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text("suggest for You"),
                        ),
                        SizedBox(width: 180),
                        Container(
                          child: InkWell(
                              onTap: (){
                                Navigator.push(context, new MaterialPageRoute(builder: (context) => ViewAll()));

                              },
                              child: Text("View All")),
                        ),
                      ],
                    ),
                  ),
                  Container(

                      color: Color.fromRGBO(255, 255, 255, 100),
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                      height: 180.0,
                      child: ListView(

                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[


                          Container(
//                              decoration: BoxDecoration(
//                                  border: Border.all(color: Colors.blueAccent)),
                              child: Image.asset('assets/1.png')),
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

                ],


              )
    );





  }
}
