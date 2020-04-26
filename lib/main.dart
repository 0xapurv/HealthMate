
import 'package:cliniccare/home.dart';
import 'package:cliniccare/modules/careplan/addmeasure.dart';
import 'package:cliniccare/modules/reminder/reminders.dart';
import 'package:flutter/material.dart';
import 'modules/careplan/addact.dart';
import 'modules/careplan/addmed.dart';
import 'modules/careplan/addmed.dart';
import 'modules/login/login_email.dart';

import 'modules/signup/signup.dart';
import 'file:///F:/Flutter%20Projects/cliniccare/lib/splash.dart';



void main() {
  runApp(MyApp());


}
//final routes ={
//  '/login': (BuildContext context)=>new LoginPage(),
//  '/home':(BuildContext context)=> new HomePage(),
//};

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: vitalHomePage(),
        theme:new ThemeData(
          scaffoldBackgroundColor: Colors.black,
          backgroundColor: Colors.black,
          primarySwatch: Colors.teal,

      )
    );
  }
}

