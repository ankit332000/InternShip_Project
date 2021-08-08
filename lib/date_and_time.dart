

import 'package:flutter/material.dart';
import 'package:tennis_court_booking/booking.dart';
import 'event_page.dart';

import 'dart:core';

import 'package:table_calendar/table_calendar.dart';



class Date_Page extends StatefulWidget {

  @override
  _Date_PageState createState() => _Date_PageState();
}

class _Date_PageState extends State<Date_Page> {
  Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
    bool isHovering = false;
      return Scaffold(
        appBar: AppBar(

          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 60),

            child: Text('City Court View',
              style: TextStyle(color:Color(0xFF4595BD),fontWeight: FontWeight.bold  ,fontSize: 20),



            ),
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),

          iconTheme: IconThemeData(color:Color(0xFF4595BD)),

          toolbarHeight: 60,


          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(

            color: Color(0xFFF8F8F8),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
               
                Container(

                  child: Column(
                    children: [
                      Container(


                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          boxShadow:[ BoxShadow(
                            color: Color(0xFFE5E5E5),
                            blurRadius: 6.0,

                          ),],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TableCalendar(
                              focusedDay: selectedDay,
                              firstDay: DateTime(1990),
                              lastDay: DateTime(2050),
                              calendarFormat: format,
                              onFormatChanged: (CalendarFormat _format) {
                                setState(() {
                                  format = _format;
                                });
                              },
                              startingDayOfWeek: StartingDayOfWeek.sunday,
                              daysOfWeekVisible: true,

                              //Day Changed
                              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                                setState(() {
                                  selectedDay = selectDay;
                                  focusedDay = focusDay;
                                });
                                print(focusedDay);
                              },
                              selectedDayPredicate: (DateTime date) {
                                return isSameDay(selectedDay, date);
                              },

                              eventLoader: _getEventsfromDay,

                              //To style the Calendar
                              calendarStyle: CalendarStyle(
                                isTodayHighlighted: true,
                                selectedDecoration: BoxDecoration(
                                  // color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.deepOrange,
                                    width: 2,
                                  ),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                selectedTextStyle: TextStyle(color: Colors.deepOrange,),
                                todayTextStyle: TextStyle(color: Colors.black),
                                todayDecoration: BoxDecoration(
                                  // color: Colors.purpleAccent,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                defaultDecoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                weekendDecoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              headerStyle: HeaderStyle(
                                formatButtonVisible: false,
                                titleCentered: true,
                                formatButtonShowsNext: false,
                                leftChevronIcon:const Icon(
                                  Icons.chevron_left,
                                  color: Colors.lightBlue,
                                ),
                                rightChevronIcon:const Icon(
                                  Icons.chevron_right,
                                  color: Colors.lightBlue,
                                ),
                                // decoration: ,
                                formatButtonDecoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                formatButtonTextStyle: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),










                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          boxShadow:[ BoxShadow(
                            color: Color(0xFFE5E5E5),
                            blurRadius: 6.0,

                          ),],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Select Date',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                   setState(() {
                                     Container(

                                         margin: EdgeInsets.only(left: 10,top: 10),
                                         height: 50,
                                         width: 100,
                                         padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.all(Radius.circular(5)),

                                           border: Border.all(
                                             color: Color(0xFF2b87b4),
                                             width: 2,
                                           ),
                                         ),
                                         child: Text(

                                           '16:00',
                                           style: TextStyle( color: Color(0xFF2b87b4),fontSize: 20,fontWeight: FontWeight.bold),
                                           textAlign: TextAlign.center,

                                         ),
                                       );



                                   });
                                  },
                                  child: Container(

                                    margin: EdgeInsets.only(left: 10,top: 10),
                                    height: 50,
                                    width: 100,
                                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),

                                      border: Border.all(
                                        color: Color(0xFF2b87b4),
                                        width: 2,
                                      ),
                                    ),
                                    child: Text(

                                      '16:00',
                                      style: TextStyle( color: Color(0xFF2b87b4),fontSize: 20,fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,

                                    ),
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '16:30',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '17:00',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '17:30',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '18:00',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '18:30',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),
                              ],
                            ),


                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '19:00',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '19:30',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),

                                Container(

                                  margin: EdgeInsets.only(left: 10,top: 10),
                                  height: 50,
                                  width: 100,
                                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey[100],
                                  ),
                                  child: Text(

                                    '20:00',
                                    style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,

                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),

                      Container(
                        child: Column(
                          children: [
                            FlatButton(onPressed: (){
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Bookings()),
                                );

                              });
                            },

                              child: Container(
                                padding: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  color: Colors.deepOrange,
                                ),
                                width: 400,
                                height: 50,
                                child: Text(
                                  'Confirm Booking',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      );
    }


  }

