import 'package:cliniccare/modules/setting/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ReminderPage extends StatefulWidget {
  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {


  CalendarController _controller;
  @override
  void initState(){
    super.initState();
    _controller=CalendarController();
  }

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
            Text("Reminders"),
          ],
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white,size: 30.0,),
            onPressed: (){
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()));

              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TableCalendar(
                initialCalendarFormat: CalendarFormat.week,
                calendarStyle: CalendarStyle(
                    todayColor: Colors.orange,
                    selectedColor: Theme
                        .of(context)
                        .primaryColor,
                    renderSelectedFirst: true,
                    todayStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white
                    )
                ),
                headerStyle: HeaderStyle(
                  formatButtonTextStyle: TextStyle().copyWith(color: Colors.white) ,
                  titleTextStyle: TextStyle(color: Colors.white,fontSize: 18.0),
                  leftChevronIcon: const Icon(
                    Icons.chevron_left,color: Colors.white,
                  ),
                  rightChevronIcon: const Icon(
                    Icons.chevron_right,color: Colors.white,
                  ),
                  centerHeaderTitle: true,
                  formatButtonVisible: false,
                ),
                startingDayOfWeek: StartingDayOfWeek.monday,
                onDaySelected: (date, events) {
                  print(date.toIso8601String());
                },
                builders: CalendarBuilders(

                    todayDayBuilder: (context, date, events) =>
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color:Colors.orange,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.0),

                          ),
                          child: Text(date.day.toString(), style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),),

                        ),
                    dowWeekdayBuilder: (context,date)=>
                        Container(
                          alignment: Alignment.center,
                          child: Text(date.toString(),style: TextStyle(
                            color: Colors.white,

                          ),),

                    ),
                    dowWeekendBuilder: (context,date)=>
                        Container(
                          alignment: Alignment.center,
                          child: Text(date.toString(),style: TextStyle(
                            color: Colors.red,

                          ),),

                        ),
                    dayBuilder: (context, date, events) =>
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5.0),
//                          decoration: BoxDecoration(
//                            color:Colors.orange,
//                            shape: BoxShape.rectangle,
//                            borderRadius: BorderRadius.circular(8.0),
//
//                          ),
                          child: Text(date.day.toString(), style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),),

                        ),
                    selectedDayBuilder: (context, date, events) =>
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Theme
                                .of(context)
                                .primaryColor,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.0),

                          ),
                          child: Text(date.day.toString(), style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),),

                        )
                ),
                calendarController: _controller,)
            ],
          )
      ),

    );
  }}