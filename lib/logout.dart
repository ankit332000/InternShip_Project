import 'package:flutter/material.dart';
import 'package:tennis_court_booking/hamburger.dart';

import 'button.dart';
import 'home_page.dart';
import 'login.dart';

class AlertDialogWidget extends StatefulWidget {
  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) => ButtonWidget(
    text: 'Alert Dialog',
    onClicked: () => showAlertDialog(context),
  );

  void showAlertDialog(BuildContext context) => showDialog(
    builder: (context) => AlertDialog(
      title: Text('Logout'),
      content: Text(
        'Are you sure want to logout?',
      ),
      actions: [
        OutlineButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
          child: Text('No'),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            });
          },
          child: Container(
            width: 70,
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