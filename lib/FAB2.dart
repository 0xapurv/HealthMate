import 'package:cliniccare/home.dart';
import 'package:cliniccare/modules/careplan/addmed.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class FAB2 extends StatefulWidget {
  @override
  _FAB2State createState() => _FAB2State();
}

class _FAB2State extends State<FAB2> with TickerProviderStateMixin {



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
                CircularButton(
                  color: Colors.white,
                  onPressed: (){
                    setState(() {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    });


                  },
                  child: Icon(Icons.close,color: Colors.redAccent),
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
  final VoidCallback onPressed;

  CircularButton({this.color, this.width, this.height, this.icon, this.onPressed,this.child});

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

