import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:tennis_court_booking/hamburger.dart';
import 'date_and_time.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = loremIpsum(words: 60);

  final int i=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Courts',
          style: TextStyle(color:Color(0xFF4595BD)),



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


      drawer: MainDrawer(),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color(0xFFF8F8F8),
          child: Column(
            children: [


              // Container(
              //
              //   padding: EdgeInsets.all(20),
              //   child: Row(
              //     children: [
              //
              //       Icon(Icons.arrow_back_ios),
              //
              //       Text('Courts',
              //       style: TextStyle(color: Colors.white),
              //
              //
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    // margin: EdgeInsets.only(left: 5,right: 5,top: 15),
                    height: 330,
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
                              Text('Cityview Court $i',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

                              ),
                              Spacer(),
                              Text('Open: 10:00 AM-8:30 PM',style: TextStyle(fontSize: 12,),),


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


                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Date_Page()),
                              );
                            });
                          },
                          child: Opacity(
                            opacity: 0.8,
                            child: Container(
                              width: 250,
                              height: 48,
                              margin: EdgeInsets.only(right: 66,left: 66,top: 8),
                              decoration: BoxDecoration(
                                  color:Color(0xFF4595BD),
                                borderRadius: BorderRadius.all(Radius.circular(24)),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Center(
                                      child: Text(
                                       'Book Now',
                                       style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white ),
                                       textAlign: TextAlign.center,
                                       ),
                                    ),
                                  ),
                                ],
                              ),
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
                    // margin: EdgeInsets.only(left: 5,right: 5,top: 15),
                    height: 330,
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
                              Text('Open: 10:00 AM-8:30 PM',style: TextStyle(fontSize: 12,),),


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


                        Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: 250,
                            height: 48,
                            margin: EdgeInsets.only(right: 66,left: 66,top: 8),
                            decoration: BoxDecoration(
                              color:Color(0xFF4595BD),
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Date_Page()),
                                        );
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        'Book Now',
                                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                    // margin: EdgeInsets.only(left: 5,right: 5,top: 15),
                    height: 330,
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
                              Text('Open: 10:00 AM-8:30 PM',style: TextStyle(fontSize: 12,),),


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


                        Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: 250,
                            height: 48,
                            margin: EdgeInsets.only(right: 66,left: 66,top:8),
                            decoration: BoxDecoration(
                              color:Color(0xFF4595BD),
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Date_Page()),
                                        );
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        'Book Now',
                                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                    // margin: EdgeInsets.only(left: 5,right: 5,top: 15),
                    height: 330,
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
                              Text('Open: 10:00 AM-8:30 PM',style: TextStyle(fontSize: 12,),),


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


                        Opacity(
                          opacity: 0.8,
                          child: Container(
                            width: 250,
                            height: 48,
                            margin: EdgeInsets.only(right: 66,left: 66,top: 8),
                            decoration: BoxDecoration(
                              color:Color(0xFF4595BD),
                              borderRadius: BorderRadius.all(Radius.circular(24)),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Date_Page()),
                                        );
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        'Book Now',
                                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

















                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}
