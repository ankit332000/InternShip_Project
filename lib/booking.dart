import 'package:flutter/material.dart';
import 'package:tennis_court_booking/home_page.dart';

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset('images/illustration_order_confirmed.png',
                height: 300,
                  width: 250,
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 31,right: 31),


                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Your Booking was'
                      ' confirmed Successfully on'
                        ,

                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    // Text(
                    //   ' confirmed Successfully on',
                    //   style: TextStyle(fontSize: 17),
                    // ),
                    Text(
                      '04-08-2021',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 160,
              ),

              Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );

                        });
                      },
                      child: Container(
                        width: 250,
                        height: 48,
                        margin: EdgeInsets.only(left: 82,right: 82,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color:Color(0xFF4595BD),



                        ),


                        child: Center(
                          child: Text(
                            'View Booking',
                            style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );

                        });
                      },
                      child: Container(
                        width: 250,
                        height: 48,
                        margin: EdgeInsets.only(left: 82,right: 82),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                            color:Color(0xFF4595BD),
                            width: 2

                          ),
                          color:Colors.white,



                        ),


                        child: Center(
                          child: Text(
                            'Home',
                            style: TextStyle(color:Color(0xFF4595BD),fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
