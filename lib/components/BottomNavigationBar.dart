import 'package:flutter/material.dart';
import 'package:water/Screens/Dashboard.dart';
import 'package:water/Screens/Profile.dart';
import 'package:water/Screens/Cart.dart';
import 'package:water/Screens/ViewAll.dart';
import 'package:water/Screens/T&C.dart';
class bottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}
class _BottomNavigationBarState extends State<bottomNavigationBar > {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedPage = 0;
  final _pageOptions = [
    Dashboard(),
    BottleList(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Water",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => AboutApp()));
                },
                child: Icon(Icons.info_outline,color: Colors.black,)),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
            icon: new Icon(Icons.menu, color: Colors.black,),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }
        ),
      ),
      drawer:  new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            _createDrawerItem(icon: Icons.shopping_cart,text: 'Cart',onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => BottleList()));
            }),
            _createDrawerItem(icon: Icons.person, text: 'Profile',onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => Profile()));
            }),
            _createDrawerItem(icon: Icons.shopping_basket, text: 'Products',onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => ViewAll()));
            }),
            Divider(),
            _createDrawerItem(icon: Icons.insert_drive_file, text:           'Terms and Conditions',onTap: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context) => AboutApp()));
            }),
            _createDrawerItem(icon: Icons.power_settings_new, text: 'Logout'),
            ListTile(
              title: Text('0.0.1'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.dashboard),title: Text("Dashboard")
      ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),title: Text("Your Cart")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),title: Text("Profile")
          ),
        ],
      ),
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
Widget _createHeader() {
  return Container(
    height: 80.0,
    child: DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                image:  AssetImage('assets/drop.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ])),
  );
}