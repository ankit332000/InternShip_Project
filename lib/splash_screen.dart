import 'package:flutter/material.dart';
import 'package:tennis_court_booking/on_boarding.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToOnBoarding();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/ic_splash.png",


            ),

          ),

        ),
        child: Column(
          children: [
            Center(
              child: Image.asset("images/ic_logo_loginscreen.png",
                height: 200,
                width: 200,
              ),
            ),

          ],

        ),
      ),
    );
  }

   _navigateToOnBoarding() async{
    await Future.delayed(Duration(milliseconds: 10000,));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoardingPage()));


   }
}
