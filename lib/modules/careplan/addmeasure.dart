import'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:cliniccare/FAB2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class vitalHomePage extends StatefulWidget {
  @override
  _vitalHomePageState createState() => _vitalHomePageState();
}

class _vitalHomePageState extends State<vitalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FAB2(),
      floatingActionButtonLocation: _CustomStartTopFloatingActionButtonLocation(),
      appBar: MyAppbar(),
      body: SingleChildScrollView(
        child:new Column(
          children: <Widget>[
            new HomePageBody(),
          ],
        )
      ),
    );
  }
}



class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new IconRow();
  }
}


class IconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 120.0,
      margin: const EdgeInsets.only(
        left:24.0 ,
        right: 24.0,
        bottom: 16.0,
        top: 16.0,
      ),
      child: new Stack(
        children: <Widget>[
          vitalCard,

        ],
      ),

    );
  }
}


final vitalCard = new Container(
  height: 124.0,
  margin: new EdgeInsets.only(left: 46.0),
  decoration: new BoxDecoration(
    color: new Color(0xFF333366),
    shape: BoxShape.rectangle,
    borderRadius: new BorderRadius.circular(8.0),
    boxShadow: <BoxShadow>[
      new BoxShadow(
        color: Colors.black12,
        blurRadius: 10.0,
        offset: new Offset(0.0,10.0),
      ),
    ],
  ),
);
















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