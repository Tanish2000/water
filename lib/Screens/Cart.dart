import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: new Text('Your Cart',style: TextStyle(fontSize: 15),),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ],
        leading: new Container(),
      ),

      body: Column(
        children: <Widget>[

          Card(
            color: Colors.lightBlue[50],
            child: ListTile(
                leading: Image.asset("assets/1.png"),
                title: Text('Nestle'),
                subtitle: Text(
                    'Pure Your life'
                ),
                trailing:Container(
                  height: 40,
                  width: 40,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),

                  child: Center(child: Text("3",style: TextStyle(fontSize: 18,color: Colors.grey),)),
                )
            ),



          ),
          Card(
            color: Colors.lightBlue[50],
            child: ListTile(
                leading: Image.asset("assets/2.png"),
                title: Text('Nestle'),
                subtitle: Text(
                    'Pure Your life'
                ),
                trailing:Container(
                  height: 40,
                  width: 40,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),

                  child: Center(child: Text("1",style: TextStyle(fontSize: 18,color: Colors.grey),)),

                )


//              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.lightBlue[50],
            child: ListTile(
                leading: Image.asset("assets/3.png"),
                title: Text('Nestle'),
                subtitle: Text(
                    'Pure Your life'
                ),
                trailing:Container(
                  height: 40,
                  width: 40,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),

                  child: Center(child: Text("5",style: TextStyle(fontSize: 18,color: Colors.grey),)),

                )


//              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.lightBlue[50],
            child: ListTile(
              leading: Image.asset("assets/4.png"),
              title: Text('Nestle'),
              subtitle: Text(
                  'Pure Your life'
              ),
              trailing:Container(
                height: 40,
                width: 40,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.white)),

                child: Center(child: Text("3",style: TextStyle(fontSize: 18,color: Colors.grey),)),

              )


//              isThreeLine: true,
            ),
          ),

          Card(
            color: Colors.lightBlue[50],
            child: ListTile(
                leading: Image.asset("assets/1.png"),
                title: Text('Nestle'),
                subtitle: Text(
                    'Pure Your life'
                ),
                trailing:Container(
                  height: 40,
                  width: 40,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),

                  child: Center(child: Text("5",style: TextStyle(fontSize: 18,color: Colors.grey),)),

                )

            ),
          ),




        ],
      ),


    );
  }
}
