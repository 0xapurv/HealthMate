//import'package:flutter/material.dart';
//import 'dart:math' as math;
//import 'package:cliniccare/FAB2.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//import '../../elements.dart';
//
//class careHomePage extends StatefulWidget {
//  @override
//  _careHomePageState createState() => _careHomePageState();
//}
//
//class _careHomePageState extends State<careHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.black,
//      floatingActionButton: FAB2(),
//      floatingActionButtonLocation: _CustomStartTopFloatingActionButtonLocation(),
//      appBar: MyAppbar(),
//      body: SingleChildScrollView(
//          child:new Column(
//            children: <Widget>[
//              new HomePageBody(),
//            ],
//          )
//      ),
//    );
//  }
//}
//
//
//
//class HomePageBody extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Expanded(
//      child: new Container(
//        color: new Color(0xFF736AB7),
//        child: new CustomScrollView(
//          scrollDirection: Axis.vertical,
//          shrinkWrap: false,
//          slivers: <Widget>[
//            new SliverPadding(
//              padding: const EdgeInsets.symmetric(vertical: 24.0),
//              sliver: new SliverList(
//                delegate: new SliverChildBuilderDelegate(
//                      (context, index) => new ElementSummary(elements[index]),
//                  childCount: elements.length,
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
//class ElementSummary extends StatelessWidget {
//  final Elements element;
////  final bool horizontal;
//
//  ElementSummary(this.element,);
////  ElementSummary.vertical(this.element) : horizontal=false;
////  IconRow(this.element);
//
//  @override
//  Widget build(BuildContext context) {
//    final elementCardContent = new Container(
//      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
//      constraints: new BoxConstraints.expand(),
//      child: new Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          new Container(height: 4.0),
//          new Text(element.name,
//            style: TextStyle(
//                color: Colors.white,
//                fontWeight: FontWeight.bold
//            ),
//          ),
//          new Container(height: 10.0),
//          new Text(element.description,
//            style: TextStyle(
//              color: Colors.white,
//              //fontWeight: FontWeight.bold
//            ),
//
//          ),
//          new Container(height: 10.0),
//        ],
//      ),
//    );
//
//
//    final elementCard = new Container(
//      child: elementCardContent,
//      height: 124.0,
//      margin: new EdgeInsets.only(left: 26.0),
//      decoration: new BoxDecoration(
//        color: new Color(0xFF333366),
//        shape: BoxShape.rectangle,
//        borderRadius: new BorderRadius.circular(8.0),
//        boxShadow: <BoxShadow>[
//          new BoxShadow(
//            color: Colors.black12,
//            blurRadius: 10.0,
//            offset: new Offset(0.0,10.0),
//          ),
//        ],
//      ),
//    );
//
//
//    return new GestureDetector(
////        onTap: horizontal
////            ? () => Navigator.of(context).push(
////          new PageRouteBuilder(
////            pageBuilder: (_, __, ___) => new DetailPage(planet),
////            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
////            new FadeTransition(opacity: animation, child: child),
////          ) ,
////        )
////            : null,
//        child: new Container(
//          margin: const EdgeInsets.only(
//            left:0.0 ,
//            right: 24.0,
//            bottom: 0.0,
//            top: 36.0,
//          ),
//          child: new Stack(
//            children: <Widget>[
//              elementCard,
//            ],
//          ),
//        )
//    );
//
//
//
//  }
//}
//
//
//
//
//
//
//
//
//
//
//
////////custom location FAB
//double _endOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = -160.0 }) {
//  assert(scaffoldGeometry.textDirection != null);
//  switch (scaffoldGeometry.textDirection) {
//    case TextDirection.rtl:
//      return _leftOffset(scaffoldGeometry, offset: offset);
//    case TextDirection.ltr:
//      return _rightOffset(scaffoldGeometry, offset: offset);
//  }
//  return null;
//}
//double _leftOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
//  return kFloatingActionButtonMargin
//      + scaffoldGeometry.minInsets.left
//      - offset;
//}
//
//double _rightOffset(ScaffoldPrelayoutGeometry scaffoldGeometry, { double offset = 50.0 }) {
//  return scaffoldGeometry.scaffoldSize.width
//      - kFloatingActionButtonMargin
//      - scaffoldGeometry.minInsets.right
//      - scaffoldGeometry.floatingActionButtonSize.width
//      + offset;
//}
//
//double _straddleAppBar(ScaffoldPrelayoutGeometry scaffoldGeometry) {
//  final double fabHalfHeight = scaffoldGeometry.floatingActionButtonSize.height / 2.0;
//  return scaffoldGeometry.contentTop - fabHalfHeight;
//}
//
//
//////////////////////////////CUSTOM FAB
//class _CustomStartTopFloatingActionButtonLocation extends FloatingActionButtonLocation {
//  const _CustomStartTopFloatingActionButtonLocation();
//
//  @override
//  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
//    return Offset(_endOffset(scaffoldGeometry), _straddleAppBar(scaffoldGeometry));
//  }
//
//  @override
//  String toString() => 'FloatingActionButtonLocation.customstartTop';
//}
//
//class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
//  final Widget title;
//
//  const MyAppbar({Key key, this.title}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Material(
//      elevation: 26.0,
//      color: Colors.teal,
//      child: Container(
//        padding: const EdgeInsets.all(10.0),
//        alignment: Alignment.centerLeft,
//        decoration: BoxDecoration(
//          border: Border(
//            bottom: BorderSide(
//              color: Colors.yellow,
//              width: 3.0,
//              style: BorderStyle.solid,
//            ),
//          ),
//        ),
//        child: title,
//      ),
//    );
//  }
//
//  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
//}
//
//
