
import 'dart:math' as math;
import 'package:cliniccare/FAB2.dart';
import 'package:cliniccare/home.dart';
import 'package:cliniccare/modules/reminder/reminders.dart';
import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



class addActPage extends StatefulWidget {

  addActPage():super();


  @override
  _addActPageState createState() => _addActPageState();
}





class _addActPageState extends State<addActPage>{

  String _time3 = "Choose your time";
  String _time1 = "Choose your time";
  String _time2 = "Choose your time";
  List<bool> isSelected = [false, false, false, false, false, false, false];

  void initState(){

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FAB2(),
      floatingActionButtonLocation: _CustomStartTopFloatingActionButtonLocation(),
      appBar: MyAppbar(),
      body:SingleChildScrollView(
        reverse: false,
        child: new Stack(
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 60.0)),
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
                              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    new TextFormField(
                                      decoration: new InputDecoration(
                                        //labelText: "Email Address",
                                        hintText: "Your Activity Name",
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
                                      ),
                                      keyboardType:TextInputType.text,
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 10.0) ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        new Text(
                                          "Start Time",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),),
                                      ],
                                    ),
                                    new Padding(padding: EdgeInsets.only(top:10.0)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ButtonTheme(
                                          height: 60.0,
                                          minWidth: 370.0,
                                          child: RaisedButton(
                                              shape: (RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0)
                                              )),
                                              elevation: 4.0,
                                              onPressed: (){
                                                DatePicker.showTimePicker(context,
                                                    theme: DatePickerTheme(
                                                      containerHeight: 315.0,
                                                      itemStyle: const TextStyle(color: Colors.black),
                                                      backgroundColor: Colors.white,
                                                      headerColor: Colors.white,
                                                      doneStyle: const TextStyle(color: Colors.blue),
                                                      cancelStyle: const TextStyle(color: Colors.black),
                                                    ),
                                                    showTitleActions: true,
                                                    onConfirm: (time){
                                                      print("Confirm $time");
                                                      _time1 = '${time.hour}:${time.minute}:${time.second}';
                                                      setState(() {});
                                                    }, currentTime: DateTime.now(), locale : LocaleType.en);
                                                setState(() {});
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 50.0,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Row(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Icon(
                                                                Icons.access_time,
                                                                size: 25.0,
                                                                color: Colors.white,

                                                              ),
                                                              Padding(padding: EdgeInsets.only(left: 20.0)),
                                                              Text(
                                                                "$_time1",
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  //fontWeight: FontWeight.bold,
                                                                  fontSize: 18.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left: 85.0)),
                                                    Text(
                                                        "Change",
                                                        style:TextStyle(
                                                          color:Colors.white,
                                                          fontSize: 18.0,
                                                        )
                                                    )
                                                  ],
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 10.0) ),
                                    //new Padding(padding: EdgeInsets.only(top:10.0)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        new Text(
                                          "End Time",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),),
                                      ],
                                    ),
                                    new Padding(padding: EdgeInsets.only(top:10.0)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ButtonTheme(
                                          height: 60.0,
                                          minWidth: 370.0,
                                          child: RaisedButton(
                                              shape: (RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0)
                                              )),
                                              elevation: 4.0,
                                              onPressed: (){
                                                DatePicker.showTimePicker(context,
                                                    theme: DatePickerTheme(
                                                      containerHeight: 315.0,
                                                      itemStyle: const TextStyle(color: Colors.black),
                                                      backgroundColor: Colors.white,
                                                      headerColor: Colors.white,
                                                      doneStyle: const TextStyle(color: Colors.blue),
                                                      cancelStyle: const TextStyle(color: Colors.black),
                                                    ),
                                                    showTitleActions: true,
                                                    onConfirm: (time){
                                                      print("Confirm $time");
                                                      _time2 = '${time.hour}:${time.minute}:${time.second}';
                                                      setState(() {});
                                                    }, currentTime: DateTime.now(), locale : LocaleType.en);
                                                setState(() {});
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 50.0,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Row(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Icon(
                                                                Icons.access_time,
                                                                size: 25.0,
                                                                color: Colors.white,

                                                              ),
                                                              Padding(padding: EdgeInsets.only(left: 20.0)),
                                                              Text(
                                                                "$_time2",
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  //fontWeight: FontWeight.bold,
                                                                  fontSize: 18.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left: 85.0)),
                                                    Text(
                                                        "Change",
                                                        style:TextStyle(
                                                          color:Colors.white,
                                                          fontSize: 18.0,
                                                        )
                                                    )
                                                  ],
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 10.0) ),
                                    //new Padding(padding: EdgeInsets.only(top:10.0)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        new Text(
                                          "Reminder Time",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),),
                                      ],
                                    ),
                                    new Padding(padding: EdgeInsets.only(top:10.0)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ButtonTheme(
                                          height: 60.0,
                                          minWidth: 370.0,
                                          child: RaisedButton(
                                              shape: (RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0)
                                              )),
                                              elevation: 4.0,
                                              onPressed: (){
                                                DatePicker.showTimePicker(context,
                                                    theme: DatePickerTheme(
                                                      containerHeight: 315.0,
                                                      itemStyle: const TextStyle(color: Colors.black),
                                                      backgroundColor: Colors.white,
                                                      headerColor: Colors.white,
                                                      doneStyle: const TextStyle(color: Colors.blue),
                                                      cancelStyle: const TextStyle(color: Colors.black),
                                                    ),
                                                    showTitleActions: true,
                                                    onConfirm: (time){
                                                      print("Confirm $time");
                                                      _time3 = '${time.hour}:${time.minute}:${time.second}';
                                                      setState(() {});
                                                    }, currentTime: DateTime.now(), locale : LocaleType.en);
                                                setState(() {});
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: 50.0,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Row(
                                                      children: [
                                                        Container(
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Icon(
                                                                Icons.access_time,
                                                                size: 25.0,
                                                                color: Colors.white,

                                                              ),
                                                              Padding(padding: EdgeInsets.only(left: 20.0)),
                                                              Text(
                                                                "$_time3",
                                                                style: TextStyle(
                                                                  color: Colors.white,
                                                                  //fontWeight: FontWeight.bold,
                                                                  fontSize: 18.0,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left: 85.0)),
                                                    Text(
                                                        "Change",
                                                        style:TextStyle(
                                                          color:Colors.white,
                                                          fontSize: 18.0,
                                                        )
                                                    )
                                                  ],
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: 10.0) ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        new Text(
                                          "Reminder Days",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),),
                                      ],
                                    ),
                                    new Padding(padding: EdgeInsets.only(top:10.0)),
                                    ToggleButtons(
                                      color:Colors.white,
                                      //highlightColor: Colors.red,
                                      selectedColor: Colors.teal,
                                      splashColor: Colors.blueAccent,
                                      borderColor: Colors.white,
                                      borderWidth: 3,
                                      selectedBorderColor: Colors.teal,
                                      //renderBorder: true,
                                      children: <Widget>[
                                        Text("M"),
                                        Text("T"),
                                        Text("W"),
                                        Text("T"),
                                        Text("F"),
                                        Text("S"),
                                        Text("S"),
                                      ],
                                      isSelected: isSelected,
                                      onPressed: (int index){
                                        setState(() {
                                          isSelected[index] = !isSelected[index];
                                        });
                                      },
                                    ),
                                    new Padding(padding: EdgeInsets.only(top:20.0)),
                                    MaterialButton(
                                      height: 50.0,
                                      minWidth: 70.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(15.0),
                                        side: BorderSide(color: Colors.white10),
                                      ),
                                      color:Colors.teal,
                                      textColor: Colors.white,
                                      child: new Text("Submit"),
                                      onPressed: (){},
                                      splashColor: Colors.white70,
                                    )
                                  ])
                          )
                      )
                  )],
              ),

            ]
        ),
      ),
    );
  }
}

class customContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[


        ],
      ) ,
    );
  }
}


//////custom location FAB
double _endOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = -160.0 }) {
  assert(scaffoldGeometry.textDirection != null);
  switch (scaffoldGeometry.textDirection) {
    case TextDirection.rtl:
      return _leftOffset(scaffoldGeometry, offset: offset);
    case TextDirection.ltr:
      return _rightOffset(scaffoldGeometry, offset: offset);
  }
  return null;
}
double _leftOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
  return kFloatingActionButtonMargin
      + scaffoldGeometry.minInsets.left
      - offset;
}

double _rightOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
  return scaffoldGeometry.scaffoldSize.width
      - kFloatingActionButtonMargin
      - scaffoldGeometry.minInsets.right
      - scaffoldGeometry.floatingActionButtonSize.width
      + offset;
}

double _straddleAppBar(ScaffoldPrelayoutGeometry scaffoldGeometry) {
  final double fabHalfHeight = scaffoldGeometry.floatingActionButtonSize.height / 2.0;
  return scaffoldGeometry.contentTop - fabHalfHeight;
}


////////////////////////////CUSTOM FAB
class _CustomStartTopFloatingActionButtonLocation extends FloatingActionButtonLocation {
  const _CustomStartTopFloatingActionButtonLocation();

  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(_endOffset(scaffoldGeometry), _straddleAppBar(scaffoldGeometry));
  }

  @override
  String toString() => 'FloatingActionButtonLocation.customstartTop';
}

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const MyAppbar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 26.0,
      color: Colors.teal,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.yellow,
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: title,
      ),
    );
  }

  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}