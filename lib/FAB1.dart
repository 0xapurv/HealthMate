import 'package:cliniccare/modules/careplan/addmed.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class FAB extends StatefulWidget {
  @override
  _FABState createState() => _FABState();
}

class _FABState extends State<FAB> with TickerProviderStateMixin {

  AnimationController animationController;
  Animation degOneTranslationAnimation,degTwoTranslationAnimation,degThreeTranslationAnimation;
  Animation rotationAnimation1,rotationAnimation2;


  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 250));
    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double >(begin: 0.0,end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.2,end: 1.0), weight: 25.0),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double >(begin: 0.0,end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.4,end: 1.0), weight: 45.0),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double >(begin: 0.0,end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.75,end: 1.0), weight: 65.0),
    ]).animate(animationController);
    rotationAnimation1 = Tween<double>(begin: 180.0,end: 0.0).animate(CurvedAnimation(parent: animationController
        , curve: Curves.easeOut));
    super.initState();
//    animationController.addListener((){
//      setState(() {
//
//      });
//    });
  }



  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Stack(
            children: <Widget>[
              Positioned(
//                  right: 30,
//                  bottom: 30,
                  child: Stack(
                    children: <Widget>[
                      AnimatedBuilder(
                        animation: animationController,
                        builder: (_,child){
                          return Transform.translate(
                            offset: Offset.fromDirection(getRadiansFromDegree(180),degOneTranslationAnimation.value * 100),
                            child: Transform(
                              transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation1.value))..scale(degOneTranslationAnimation.value),
                              alignment: Alignment.center,
                              child: CircularButton(
                                color: Colors.teal,
                                width: 50,
                                height: 50,
                                child: Icon(
                                  FontAwesomeIcons.utensils,
                                  color: Colors.white,
                                ),
                                onPressed: (){

                                },
                              ),
                            ),
                          );
                        },
                        child: Placeholder(key: Key('animated')),
                      ),
                      AnimatedBuilder(
                        animation: animationController,
                        builder: (_,child){
                        return Transform.translate(
                          offset: Offset.fromDirection(getRadiansFromDegree(225),degTwoTranslationAnimation.value * 100),
                          child: Transform(
                            transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation1.value))..scale(degOneTranslationAnimation.value),
                            alignment: Alignment.center,
                            child: CircularButton(
                              color: Colors.teal,
                              width: 50,
                              height: 50,
                              child: Icon(
                                FontAwesomeIcons.running,
                                color: Colors.white,
                              ),
                              onPressed: (){

                              },
                            ),
                          ),
                        );},
                        child: Placeholder(key: Key('animated')),
                      ),
                      AnimatedBuilder(
                        animation: animationController,
                        builder: (_,child){
                        return Transform.translate(
                          offset: Offset.fromDirection(getRadiansFromDegree(270),degThreeTranslationAnimation.value * 100),
                          child: Transform(
                            transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation1.value))..scale(degThreeTranslationAnimation.value),
                            alignment: Alignment.center,
                            child: CircularButton(
                              color: Colors.red,
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.add_circle_outline,
                                color: Colors.white,
                              ),
                              onPressed: (){
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => addMedPage()));
                                });

                              },
                            ),
                          ),
                        );},
                          child: Placeholder(key: Key('animated')),
                      ),
                      AnimatedBuilder(
                      animation: animationController,
                      builder: (_,child){
                        return Transform.translate(
                          offset: Offset.fromDirection(getRadiansFromDegree(315),degOneTranslationAnimation.value * 100),
                          child: Transform(
                            transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation1.value))..scale(degOneTranslationAnimation.value),
                            alignment: Alignment.center,
                            child: CircularButton(
                              color: Colors.teal,
                              width: 50,
                              height: 50,
                              child: Icon(
                                FontAwesomeIcons.pills,
                                color: Colors.white,
                              ),
                              onPressed: (){
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => addMedPage()));
                                });
                              },
                            ),
                          ),
                        );},
                        child: Placeholder(key: Key('animated')),
                      ),
                      AnimatedBuilder(
                        animation: animationController,
                        builder: (_,child){
                        return Transform.translate(
                          offset: Offset.fromDirection(getRadiansFromDegree(360),degOneTranslationAnimation.value * 100),
                          child: Transform(
                            transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation1.value))..scale(degOneTranslationAnimation.value),
                            alignment: Alignment.center,
                            child: CircularButton(
                              color: Colors.teal,
                              width: 50,
                              height: 50,
                              child: Icon(
                                FontAwesomeIcons.thermometerFull,
                                color: Colors.white,
                              ),
                              onPressed: (){

                              },
                            ),
                          ),
                        );},
                        child: Placeholder(key: Key('animated')),
                      ),
//                      Transform.translate(
//                        offset: Offset.fromDirection(getRadiansFromDegree(360),degOneTranslationAnimation.value * 1),
//                        child: Transform(
//                          transform: Matrix4.rotationZ(getRadiansFromDegree(rotationAnimation2.value))..scale(degOneTranslationAnimation.value),
//                          child: CircularButton(
//                            color: Colors.black,
//                            width: 60,
//                            height: 60,
//                            icon: Icon(
//                              Icons.close,
//                              color: Colors.red,
//                            ),
//                            onClick: (){
//                              if (animationController.isCompleted) {
//                                animationController.forward();
//                              } else {
//                                animationController.reverse();
//                              }
//                            },
//                          ),
//                        ),
//                      ),
                      CircularButton1(
                        color1: Colors.white,
                        width1: 60,
                        height1: 60,
                        icon1: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onClick1: (){
                        if (animationController.isCompleted) {
                          animationController.reverse();
                        } else {
                          animationController.forward();
                        }
                      },
                      )

                    ],
                  ))
            ],
    );
  }
}


class CircularButton extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  //final Function onClick;
  final VoidCallback onPressed;

  CircularButton({this.color, this.width, this.height, this.icon,this.onPressed,this.child});

  @override
  _CircularButtonState createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      //elevation: BoxDecoration(color: widget.color,shape: BoxShape.circle),
      elevation: 20.0,
      shape: null,
      type: MaterialType.circle,
      borderRadius: null,
      borderOnForeground: true,
      color: widget.color,
      child: InkWell(
        enableFeedback: true,
        onTap: widget.onPressed,
        child: Container(
          width: 60,
          height: 60,
          child: IconTheme.merge(
              data: IconThemeData(color: Theme.of(context).accentIconTheme.color),
              child: widget.child),
        ),
      ),
    );
  }
}




class CircularButton1 extends StatelessWidget {

  final double width1;
  final double height1;
  final Color color1;
  final Icon icon1;
  final Function onClick1;

  const CircularButton1({Key key, this.width1, this.height1, this.color1, this.icon1, this.onClick1}) : super(key: key);

  //CircularButton({this.color1, this.width1, this.height1, this.icon1, this.onClick1});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color1,shape: BoxShape.circle),
      width: width1,
      height: height1,
      child: IconButton(icon: icon1,enableFeedback: true, onPressed: onClick1),
    );
  }
}


class RoundedButton extends StatelessWidget {
  RoundedButton({this.title, this.child,this.colour, @required this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 12.0,
          height: 42.0,
//          child: Text(
//            title,
//            style: TextStyle(
//              color: Colors.white,
//            ),
//          ),
        ),
      ),
    );
  }
}