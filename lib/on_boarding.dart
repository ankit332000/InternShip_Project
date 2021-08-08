import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import 'button_widget.dart';
import 'home_page.dart';
import 'login.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Lorem Ipsum Dummy Text',
          body: 'Lorem Ipsum is simply dummy text of the printing and '
              'typesetting industry. Lorem Ipsum has been the industry '
              'standard dummy text ever since the 1500s, when an unknown'
              ' printer took a galley of type and scrambled it to '
              'make a type specimen book.',
          image: buildImage('images/illustration_onboarding1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Lorem Ipsum Dummy Text',
          body: 'Lorem Ipsum is simply dummy text of the printing and '
              'typesetting industry. Lorem Ipsum has been the industry '
              'standard dummy text ever since the 1500s, when an unknown'
              ' printer took a galley of type and scrambled it to '
              'make a type specimen book.',
          image: buildImage('images/illustration_onboarding2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Lorem Ipsum Dummy Text',
          body: 'Lorem Ipsum is simply dummy text of the printing and '
              'typesetting industry. Lorem Ipsum has been the industry '
              'standard dummy text ever since the 1500s, when an unknown'
              ' printer took a galley of type and scrambled it to '
              'make a type specimen book.',
          footer: ButtonWidget(
            text: 'Login',
            onClicked: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ),
          ),
          image: buildImage('images/illustration_onboarding1.png'),
          decoration: getPageDecoration(),
        ),

      ],
      done: Text('Home', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => goToHome(context),
      showSkipButton: true,
      skip: Text('Skip'),

      onSkip: () => goToHome(context),

      next: Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      onChange: (index) => print('Page $index selected'),
      globalBackgroundColor: Theme.of(context).primaryColor,
      skipFlex: 0,
      nextFlex: 0,
      // isProgressTap: false,
      // isProgress: false,
      // showNextButton: false,
      // freeze: true,
      // animationDuration: 1000,
    ),
  );

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => HomePage()),
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
    color: Color(0xFFBDBDBD),
    activeColor: Colors.black,
    size: Size(10, 10),
    // activeSize: Size(22, 10),
    // activeShape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(24),
    // ),
  );

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 15,color: Colors.grey),
    descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white,
  );
}
