import 'package:flutter/material.dart';
import 'package:water/Screens/Cart.dart';

int _n = 0;


class AddProduct extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Montserrat'
      ),

      home: AddProducts(),
    );
  }
}

class AddProducts extends StatefulWidget {
  AddProducts({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {

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



  String selected = "blue";
  bool favourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //The whole application area
      body:SafeArea(
        child: Column(
          children: <Widget>[
            hero(),
            spaceVertical(20),
            //Center Items
            Expanded (
              child: sections(),
            ),

            //Bottom Button
            purchase()
          ],
        ),
      ),
    );
  }


  ///************** Hero   ***************************************************/

  Widget hero(){
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0,20,0,0),
            child: Container(child: Image.asset("assets/9.png",)),
          ), //This
          // should be a paged
          // view.
          Positioned(child: appBar(),top: 0,),
          Positioned(child: FloatingActionButton(
              elevation: 2,
              child:Image.asset(favourite? "images/heart_icon.png" : "images/heart_icon_disabled.png",
                width: 30,
                height: 30,),
              backgroundColor: Colors.white,
              onPressed: (){
                setState(() {
                  favourite = !favourite;
                });
              }
          ),
            bottom: 0,
            right: 20,
          ),

        ],
      ),
    );
  }


  Widget appBar(){
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("images/back_button.png"),
          Container(
            child: Column(
              children: <Widget>[
                Text("Trust In Every Drop",style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 14
                ),),
                Text("kinley", style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F2F3E)
                ),),
              ],
            ),
          ),
          Image.asset("images/bag_button.png", width: 27, height: 30,),
        ],
      ),
    );
  }

  Widget sections(){
    return Container(
      padding: EdgeInsets.all(16),

        child: Column(
          children: <Widget>[
            counter(),
            description(),
            spaceVertical(50),
          ],
        ),

    );
  }

  Widget counter(){
    return Container(
      child:new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text("Add Quantity"),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(40,0,0,0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 90,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15.0)),
                        border: Border.all(
                          color: Colors.blueAccent,
                          width: 2,
                        )),
                    child: Center(
                      child: new Text('$_n',
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 20.0)),
                    ),
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: Colors.lightBlue[50], // button color
                    child: InkWell(
                      splashColor: Colors.red, // inkwell color
                      child: SizedBox(width: 45, height: 45, child: Icon(Icons.add)),
                      onTap: add,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipOval(
                    child: Material(
                      color: Colors.lightBlue[50], // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(width: 45, height: 45, child: Icon(Icons.remove)),
                        onTap: minus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }



  Widget description(){
    return Text(
      "There are many variations of passages of Lorem Ipsum available,  The generated Lorem Ipsum is therefore always free from repetition, injected or non-characteristic words etc.",


      textAlign: TextAlign.justify,
      style: TextStyle(height: 1.5, color: Color(0xFF6F8398)),);
  }

  Widget purchase(){
    return Container(
      padding: EdgeInsets.fromLTRB(8,0,10,8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Text("ADD TO Cart +",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F2F3E)
            ),
          ), color: Colors.transparent,
            onPressed: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => BottleList()));

            },),
          Text(r"₹ 95",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w100,
                color: Color(0xFF2F2F3E)
            ),
          )
        ],
      ),
    );
  }

  /***** End */





  ///************** UTILITY WIDGET ********************************************/

  Widget spaceVertical(double size){
    return SizedBox(height: size,);
  }

  Widget spaceHorizontal(double size){
    return SizedBox(width: size,);
  }
/***** End */
}





