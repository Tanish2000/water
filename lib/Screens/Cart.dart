import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'PatmentScreen.dart';
import 'package:water/Screens/addProduct.dart';


class BottleList extends StatefulWidget {
  BottleList({Key key}) : super(key: key);

  @override
  BottleListState createState() {
    return BottleListState();
  }
}

class BottleListState extends State<BottleList> {
  final items = List<String>.generate(6, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body:Column(

          children: <Widget>[
            Container(
              height: 500,
              width: 400,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => AddProduct()));

                },
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return Dismissible(
                      key: Key(item),
                      // Provide a function that tells the app
                      // what to do after an item has been swiped away.
                      onDismissed: (direction) {
                        // Remove the item from the data source.
                        setState(() {
                          items.removeAt(index);
                        });

                        // Then show a snackbar.
                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text("$item Removed")));
                      },
                      // Show a red background as the item is swiped away.
                      background: Container(color: Colors.red[900]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,2,0,2),

                        child: Container(
                          color:Colors.lightBlue[50],
                          child: ListTile(
                              leading: Image.asset("assets/1.png"),
                              title: Text('$item'),onTap: (){
                            Navigator.push(context, new MaterialPageRoute(builder: (context) => PaymenScreen()));
                          },
                              subtitle: Text(
                                  'Pure Your life'
                              ),
                              trailing:Container(
                                height: 40,
                                width: 40,
                                decoration:
                                BoxDecoration(border: Border.all(color: Colors.white)),

                                child: Center(child: Text("2",style: TextStyle(fontSize: 18,color: Colors.grey),)),
                              )
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

          ],
        ),

        bottomSheet: Container(
             height: 100,
            width: 500,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.info), onPressed: null),
                  Text(
                    'Total :',
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\₹ 524',
                    style: TextStyle(fontSize: 17.0, color: Colors.black54),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: OutlineButton(
                          borderSide: BorderSide(color: Colors.green),
                          child: const Text('PROCEED TO PAY'),
                          textColor: Colors.green,
                          onPressed: () {
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Item_Details()));
                          },
                          shape: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),

      ),
    );
  }
}