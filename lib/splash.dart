import 'dart:ui';

import 'package:cliniccare/modules/login/login_email.dart';
import 'package:cliniccare/modules/signup/signup.dart';
import 'package:flutter/material.dart';

class splashPage extends StatefulWidget {
  @override
  _splashPageState createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              new Container(
                padding: const EdgeInsets.only(top:20.0),
                child: new Image.asset(
                  'images/logo.JPEG',
                  height: 150.0,
                  width: 150.0,

              )
              )]),
              new Padding(padding: EdgeInsets.only(bottom:70.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.only(left:50.0)),
                  new MaterialButton(
                    height: 50.0,
                    minWidth: 120.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.white10),
                    ),
                    color:Colors.teal,
                    textColor: Colors.white,
                    child: new Text("New User"),
                    onPressed: () => {
                      Navigator.push(
                        context,new MaterialPageRoute(builder:(context) => new SignUpPage()))
                    },
                    splashColor: Colors.white70,
                  ),
                  new Padding(padding: EdgeInsets.only(left:70.0)),
                  new MaterialButton(
                    height: 50.0,
                    minWidth: 70.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.white10),
                    ),
                    color:Colors.teal,
                    textColor: Colors.white,
                    child: new Text("Existing User"),
                    onPressed: () => {
                      Navigator.push(
                          context,new MaterialPageRoute(builder:(context) => new LoginPage()))
                    },
                    splashColor: Colors.white70,
                  )

                ],
              )
            ],
          )
      );
  }
}
