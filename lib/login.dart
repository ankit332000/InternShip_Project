import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tennis_court_booking/home_page.dart';


import 'facebook.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/ic_login_bg.png",


            ),

          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset("images/ic_logo_loginscreen.png",
                    height: 200,
                      width: 200,
                    ),
                    ),


                  Center(
                    child: Text(
                      'Book '
                          'A '
                          'Tennis '
                          'Court',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),






            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 300),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.all(Radius.circular(10)),
               ),



                child: Row(

                  children: [
                    SizedBox(
                      width: 20,
                    ),

                    Image.asset('images/google.jpg',
                    height: 30,
                      width: 30,
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    FlatButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:
                                  (context){
                                return HomePage();
                              }));
                    },
                        child: Text(
                          'Login with google',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),
                        ),
                    ),


                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
