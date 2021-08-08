import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_court_booking/help.dart';
import 'package:tennis_court_booking/my_profile.dart';

import 'logout.dart';
import 'my_booking.dart';
import 'notification.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Color kColor=Colors.black;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16,
      child: Container(

        child: Column(
          children: [
            Container(
              height: 232,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow:[ BoxShadow(
                  color: Colors.black,
                  blurRadius: 6.0
                ),],
                color: Color(0xFF2B87B4),



              ),


              width:double.maxFinite,
              padding: EdgeInsets.all(20),

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        // margin: EdgeInsets.only(top: 30,bottom: 10,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage('images/logo1.jpg',


                          ),
                          fit: BoxFit.fill,

                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Text('SageCreek@gmail.com',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            ListTile(
              leading: Icon(Icons.person),
              onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyProfile()),
                  );
                });
              },

              title:Text(
                'My Profile',
                style: TextStyle(fontSize: 18,color: kColor,),
              ),

            ),

            ListTile(
              leading: Icon(Icons.calendar_today_rounded),
              onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyBooking()),
                  );
                });
              },
              title:Text(
                'My Booking',
                style: TextStyle(fontSize: 18,),
              ),

            ),

            ListTile(
              leading: Icon(Icons.notifications_none_outlined),
              onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notifications()),
                  );

                });
              },
              title:Text(
                'Notifications',
                style: TextStyle(fontSize: 18,),
              ),

            ),

            ListTile(
              leading: Icon(Icons.help_outline),
              onTap: (){
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Help()),
                  );

                });
              },
              title:Text(
                'Help',
                style: TextStyle(fontSize: 18,),
              ),

            ),

            ListTile(
              leading: Icon(Icons.logout),
              onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AlertDialogWidget()),
                  );

                });
              },
              title:Text(
                'Logout',
                style: TextStyle(fontSize: 18,),
              ),
            ),





          ],
        ),
      ),
    );
  }
  void showAlertDialog(BuildContext context) => showDialog(
    builder: (context) => AlertDialog(
      title: Text('Logout'),
      content: Text(
        'Are you sure want to logout?',
      ),
      actions: [
        OutlineButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('No'),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color:Color(0xFF4595BD),



            ),


            child: Center(
              child: Text(
                'Yes',
                style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,),
              ),
            ),
          ),
        )
      ],
    ), context: context,
  );

}
