import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:tennis_court_booking/hamburger.dart';
import 'date_and_time.dart';
class MyBooking extends StatefulWidget {
  @override
  _MyBookingState createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  String text = loremIpsum(words: 60);

  final int i=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 60),

          child: Text('My Bookings',
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
                height: 20,
              ),
              Container(
                // margin: EdgeInsets.only(left: 5,right: 5,top: 15),
                height:  296,
                width: 382,



                decoration: BoxDecoration(
                  boxShadow:[ BoxShadow(
                    color: Color(0xFFE5E5E5),
                    blurRadius: 6.0,

                  ),],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 12,left: 12,right: 12),
                      child: ClipRRect(


                        borderRadius: BorderRadius.circular(20),


                        child: Image.asset('images/tennis2.jpg',
                          height: 156,
                          width: 358,


                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 12,right:20,top: 13),


                      child:  Row(

                        children: [
                          Text('Cityview Court $i',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Spacer(),
                          Text('Time:10:00 AM',style: TextStyle(fontSize: 12,),),


                        ],
                      ),
                    ),

                    Container(


                      width: 350,
                      height: 43,
                      padding: EdgeInsets.only(left: 12,right: 20,top: 13),
                      child: Column(
                        children: [
                          Text('Lorem Ipsum has been the industrys '
                              'standard dummy text ever since the 1500s, '
                              'standard dummy text ever since the,'
                              ,
                              style:TextStyle(color: Colors.grey,
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ),
                   SizedBox(
                     height: 10,
                   ),


                   Container(

                     height: 34,
                     width: 382,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(
                         bottomRight: Radius.circular(20),
                         bottomLeft: Radius.circular(20),
                       ),
                       color: Color(0xFF466523),
                     ),

                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Center(
                           child: Text(
                             'Your booking is successfully confirmed on',
                             style: TextStyle(color: Colors.white),
                           ),
                         ),
                       ],
                     ),
                   ),


                  ],
                ),
              ),

                    SizedBox(
                      height: 20,
                    ),

              Container(
                // margin: EdgeInsets.only(left: 5,right: 5,top: 15),
                height:  296,
                width: 382,



                decoration: BoxDecoration(
                  boxShadow:[ BoxShadow(
                    color: Color(0xFFE5E5E5),
                    blurRadius: 6.0,

                  ),],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 12,left: 12,right: 12),
                      child: ClipRRect(


                        borderRadius: BorderRadius.circular(20),


                        child: Image.asset('images/tennis2.jpg',
                          height: 156,
                          width: 358,


                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 12,right:20,top: 13),


                      child:  Row(

                        children: [
                          Text('Cityview Court $i',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Spacer(),
                          Text('Time:10:00 AM',style: TextStyle(fontSize: 12,),),


                        ],
                      ),
                    ),

                    Container(


                      width: 350,
                      height: 43,
                      padding: EdgeInsets.only(left: 12,right: 20,top: 13),
                      child: Column(
                        children: [
                          Text('Lorem Ipsum has been the industrys '
                              'standard dummy text ever since the 1500s, '
                              'standard dummy text ever since the,'
                              ,
                              style:TextStyle(color: Colors.grey,
                                fontSize: 12,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Container(

                      height: 34,
                      width: 382,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Color(0xFF466523),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              'Your booking is successfully confirmed on',
                              style: TextStyle(color: Colors.white),
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
