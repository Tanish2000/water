import 'package:flutter/material.dart';
import 'package:water/Screens/SignUp.dart';
import 'package:water/components/BottomNavigationBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  bool showSpinner=false;
  final _auth=FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF01579B),
                        Color(0xFF03A9F4)
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90)
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/drop.png',width: 150,height: 150,),
                    ),
                    Spacer(),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 32,
                            right: 32
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,new MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child: Text('Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Flexible(
                child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 62),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 45,
                        padding: EdgeInsets.only(
                            top: 4,left: 16, right: 16, bottom: 4
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child: TextField(
                          onChanged: (value){
                            email=value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        height: 45,
                        margin: EdgeInsets.only(top: 32),
                        padding: EdgeInsets.only(
                            top: 4,left: 16, right: 16, bottom: 4
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5
                              )
                            ]
                        ),
                        child: TextField(
                          onChanged: (value){
                            password=value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.vpn_key,
                              color: Colors.grey,
                            ),
                            hintText: 'Password',
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 16, right: 32
                          ),
                          child: Text('Forgot Password ?',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                      Spacer(),

                      GestureDetector(
                        onTap: ()async{
                          setState(() {
                            showSpinner=true;
                          });
                          try{
                            final user=await _auth.signInWithEmailAndPassword(email: email, password: password);
                            if(user!=null){
                              Navigator.push(context, new MaterialPageRoute(builder: (context) => bottomNavigationBar()));
                            }
                            setState(() {
                              showSpinner=false;
                            });
                          }catch(e){
                            print(e);
                          }
                        },
                        child: Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width/1.2,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF01579B),
                                  Color(0xFF03A9F4)
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(50)
                              )
                          ),

                            child: Center(
                              child: Text('Login'.toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}