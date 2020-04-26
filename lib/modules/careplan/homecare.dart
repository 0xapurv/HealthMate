import 'package:flutter/material.dart';

class Careplan extends StatefulWidget {
  @override
  _CareplanState createState() => _CareplanState();
}

class _CareplanState extends State<Careplan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left:10),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},

            )),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("My CarePlan"),
          ],
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add, color: Colors.white,size: 30.0,),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}