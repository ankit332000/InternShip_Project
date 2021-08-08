import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 60),

          child: Text('Notifications',
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
      body:Container(
        child: Column(
          children: [

            SizedBox(
              height: 20,
            ),

            Container(
              width: 382,

              height: 61,



              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.white,
                      // ),
                      boxShadow:[ BoxShadow(
                        color: Color(0xFFE5E5E5),
                        blurRadius: 6.0,

                      ),],
                      color: Colors.white,
                    ),

                    padding: EdgeInsets.only(top: 14,right: 12,bottom: 7,left: 16),
                    child: Row(
                      children: [
                        Image.asset('images/ic_dot_blue.png'),
                        SizedBox(width: 19,),
                        Column(
                          children: [

                            Text('Lorem Ipsum is simply dummy text of the'

                                ,
                                style:TextStyle(color: Color(0xFF151910),)),
                            Text(
                                ' and typesetting industry. Lorem Ipsum has '
                               ,
                                style:TextStyle(color: Color(0xFF151910),)),

                          ],
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
              width: 382,

              height: 61,



              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.white,
                      // ),
                      boxShadow:[ BoxShadow(
                        color: Color(0xFFE5E5E5),
                        blurRadius: 6.0,

                      ),],
                      color: Colors.white,
                    ),

                    padding: EdgeInsets.only(top: 14,right: 12,bottom: 7,left: 16),
                    child: Row(
                      children: [
                        Image.asset('images/ic_dot_blue.png'),
                        SizedBox(width: 19,),
                        Column(
                          children: [

                            Text('Lorem Ipsum is simply dummy text of the'

                                ,
                                style:TextStyle(color: Color(0xFF151910),)),
                            Text(
                                ' and typesetting industry. Lorem Ipsum has '
                                ,
                                style:TextStyle(color: Color(0xFF151910),)),

                          ],
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
              width: 382,

              height: 61,



              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(


                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // border: Border.all(
                      //   color: Colors.white,
                      // ),
                      boxShadow:[ BoxShadow(
                        color: Color(0xFFE5E5E5),
                        blurRadius: 6.0,

                      ),],
                      color: Colors.white,
                    ),

                    padding: EdgeInsets.only(top: 14,right: 12,bottom: 7,left: 16),
                    child: Row(
                      children: [
                        Image.asset('images/ic_dot_grey.png'),
                        SizedBox(width: 19,),
                        Column(
                          children: [

                            Text('Lorem Ipsum is simply dummy text of the'

                                ,
                                style:TextStyle(color: Color(0xFFa2a2a2),)),
                            Text(
                                ' and typesetting industry. Lorem Ipsum has '
                                ,
                                style:TextStyle(color: Color(0xFFa2a2a2),)),

                          ],
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
    );
  }
}
