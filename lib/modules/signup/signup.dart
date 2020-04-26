import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:flutter/material.dart';

import '../../home.dart';

class SignUpPage extends StatefulWidget {
  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  FocusNode _focusNode1;
  FocusNode _focusNode2;
  FocusNode _focusNode3;
  bool _Checked=false;
  bool _isEnabled=true;


  _onChanged(){
    setState(() {
      _isEnabled = !_isEnabled;
    });
  }

  @override
  void initState(){
    super.initState();
    _focusNode1 =FocusNode();
    _focusNode2 =FocusNode();
    _focusNode3 =FocusNode();
    _animationController=new AnimationController(
        vsync:this,
        duration: new Duration(milliseconds: 300)
    );
    _animation =new CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut
    );
    _animation.addListener(()=> this.setState(() { }));
    _animationController.forward();
  }
  @override
  void _requestFocus1(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode1);
    });
  }

  @override
  void _requestFocus2(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode2);
    });
  }

  @override
  void _requestFocus3(){
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode3);
    });
  }


  @override
  void dispose1(){
    _focusNode1.dispose();
    super.dispose();
  }

  @override
  void dispose2(){
    _focusNode2.dispose();
    super.dispose();
  }

  @override
  void dispose3(){
    _focusNode3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var _onPressed;
    if (_Checked){
      _onPressed =(){
        print("success");

      };
    }
    List <String> _checked = [];

    return new Scaffold(
        backgroundColor: Colors.black,
        body:SingleChildScrollView(
          child: new Stack(
            children: <Widget>[
              new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        new Container(
                          padding: const EdgeInsets.only(top:0.0),
                          child: new Image.asset(
                            'images/logo.JPEG',
                            height: 150.0,
                            width: 150.0,
                            //fit: BoxFit.cover,
                          ),
                        )

                      ],
                    ),
                    new Form(
                      child: new Theme(
                        data:new ThemeData(
                            brightness: Brightness.dark,primarySwatch: Colors.teal,
                            inputDecorationTheme:new InputDecorationTheme(
                                labelStyle:new TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                )) ),
                        child: new Container(
                          padding: const EdgeInsets.all(20.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new TextFormField(
                                focusNode: _focusNode1,
                                onTap: _requestFocus1,
                                decoration: new InputDecoration(
                                    labelText: "Email Address",
                                    hintText: "Enter your Email Address(you@email.com)",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),

                                    ),
                                    labelStyle: TextStyle(
                                        color:_focusNode1.hasFocus ? Colors.blue : Colors.white)
                                ),
                                keyboardType:TextInputType.emailAddress ,
                              ),
                              new Padding(padding: EdgeInsets.only(top:20.0)),
                              new TextFormField(
                                focusNode: _focusNode2,
                                onTap: _requestFocus2,
                                decoration: new InputDecoration(
                                    labelText: "Password",
                                    hintText: "Your Password(atleast 8 characters)",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),

                                    ),
                                    labelStyle: TextStyle(
                                        color:_focusNode2.hasFocus ? Colors.blue : Colors.white)
                                ),
                                keyboardType:TextInputType.visiblePassword ,
                                obscureText: true,
                              ),
                              //new Padding(
                               //   padding: const EdgeInsets.only(top: 40.0) ),
                              new Padding(padding: EdgeInsets.only(top:20.0)),
                              new TextFormField(
                                focusNode: _focusNode3,
                                onTap: _requestFocus3,
                                decoration: new InputDecoration(
                                    labelText: "Age",
                                    hintText: "Enter your Age(e.g. 40)",
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),

                                    ),
                                    labelStyle: TextStyle(
                                        color:_focusNode3.hasFocus ? Colors.blue : Colors.white)
                                ),
                                keyboardType:TextInputType.number,

                              ),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  CheckboxGroup(
                                    orientation: GroupedButtonsOrientation.HORIZONTAL,
                                    padding: EdgeInsets.only(left: 100.0),
                                    labelStyle: TextStyle(
                                      color: Colors.white,
                                    ),
                                    labels:<String>[
                                      "Male",
                                      "Female",
                                      "Other",
                                    ],
                                    checked: _checked,
                                   onChange: (bool _isChecked, String label, int index)=>
                                    print("isChecked:$_isChecked label:$label index: $index"),
                                   onSelected:(List selected) =>setState((){
                                      if (selected.length>1){
                                        selected.removeAt(0);
                                      }
                                      _checked=selected;
                                    }),
                                  ),
                                ],
                              ),
                              new Padding(padding: const EdgeInsets.only(top: 10.0)),
                              new CheckboxListTile(
                                title: Text("I agree to the terms of service"),
                                value: _Checked,
                                onChanged: _isEnabled
                                ? (val) {
                                  setState(() {
                                    _Checked= val;
                                  });
                                }:null,
                              ),

                              new Padding(
                                  padding: const EdgeInsets.only(top: 10.0) ),
                              new MaterialButton(
                                height: 50.0,
                                minWidth: 100.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(15.0),
                                  side: BorderSide(color: Colors.white10),
                                ),
                                color:Colors.teal,
                                textColor: Colors.white,
                                child: new Text("COMPLETE SIGN UP ->"),
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => HomePage()));
                                },
                                splashColor: Colors.white70,
                              ),

                        ]),
                      ),
                    )

              )
            ],
          )]),
        ));

  }
}


//  Widget _body() {
//    var _checked;
//    return ListView(children: <Widget>[
//      Row(
//      children:<Widget> [
//        CheckboxGroup(
//        labels: <String>[
//          "Male",
//          "Female",
//          "Other",
//        ],
//        checked: _checked,
//        onChange: (bool isChecked, String label, int index) =>
//        print("isChecked: $isChecked   label: $label  index: $index"),
//        onSelected: (List selected) => setState(() {
//        if (selected.length > 1) {
//        selected.removeAt(0);
//        print('selected length  ${selected.length}');
//        } else {
//        print("only one");
//        }
//        _checked = selected;
//        }),
//        ),
//      ],
//    ),
//
//
