import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            ClipPath(
              child: Container(color: Colors.lightBlue[200].withOpacity(0.8)),
              clipper: getClipper(),
            ),
            Positioned(
                width: 350.0,
                top: MediaQuery.of(context).size.height / 5,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
//                            color: Colors.blueAccent[200],
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/7_avatar-512.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
//                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ])),
                    SizedBox(height: 5.0),
                    Container(
                        height: 30.0,
                        width: 95.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.black,
                          color: Colors.grey,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        )
                    ),
                    SizedBox(height:20),

                    Text(
                      'Girish',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),


                  ],
                ))
          ],
        ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 165, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
