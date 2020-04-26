import 'dart:ui';



import 'package:cliniccare/models/user.dart';
import 'package:cliniccare/modules/login/login_presenter.dart';
import 'package:cliniccare/utils/database.dart';
import 'package:flutter/material.dart';

import '../../home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  Animation<double> _animation;
  FocusNode _focusNode1;
  FocusNode _focusNode2;


  /////////////////////////implements LoginPageContract(part in state)
//  BuildContext _ctx;
//  bool _isLoading;
//  final formKey = new GlobalKey<FormState>();
//  final scaffoldKey = new GlobalKey<ScaffoldState>();
//  String _username,_password;
//
//  LoginPagePresenter _presenter;
//
//  _LoginPageState(){
//    _presenter = new LoginPagePresenter(this);
//  }
//
//  void _submit(){
//    final form = formKey.currentState;
//
//    if(form.validate()){
//      setState(() {
//        _isLoading = true;
//        form.save();
//        _presenter.doLogin(_username, _password);
//      });
//    }
//
//  }
//
//
//  void _showSnackBar(String text){
//    scaffoldKey.currentState.showSnackBar(new SnackBar(
//    content: new Text(text),
//    ));
//  }

  @override
  void initState(){
    super.initState();
    _focusNode1 =FocusNode();
    _focusNode2 =FocusNode();
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
  Widget build(BuildContext context) {
    /////_ctx = context;

    return new Scaffold(
      //key: scaffoldKey,
      backgroundColor: Colors.black,
      body:new Stack(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
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
                //key: formKey,
                child: new Theme(
                  data:new ThemeData(
                    brightness: Brightness.dark,primarySwatch: Colors.teal,
                      inputDecorationTheme:new InputDecorationTheme(
                        labelStyle:new TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        )) ),
                child: new Container(
                  padding: const EdgeInsets.all(40.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          //onSaved: (val) => _username = val,
                          focusNode: _focusNode1,
                          onTap: _requestFocus1,
                          decoration: new InputDecoration(
                          labelText: "Email Address",
                          hintText: "Enter the Email Address",
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
                              hintText: "Enter the Password",
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
                        new Padding(
                            padding: const EdgeInsets.only(top: 40.0) ),
                        new MaterialButton(
                          height: 50.0,
                          minWidth: 70.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.white10),
                          ),
                          color:Colors.teal,
                          textColor: Colors.white,
                          child: new Text("Login"),
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()));
                          },
                          splashColor: Colors.white70,
                        )
                      ],
                    ),
                ),
                ),
              )
            ]
          )
            ],
          )
      );
  }

//  @override
//  void onLoginError(String error) {
//    // TODO: implement onLoginError
//    _showSnackBar(error);
//    setState(() {
//      _isLoading=false;
//    });
//
//  }
//
//  @override
//  void onLoginSuccess(User user) async{
//    // TODO: implement onLoginSuccess
//    _showSnackBar(user.toString());
//    setState(() {
//      _isLoading=false;
//    });
//    var db = new DatabaseHelper();
//    await db.saveUser(user);
//    Navigator.of(context).pushNamed("/home");
//  }
}

