// import 'package:flutter/material.dart';
//
// class MyLits extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Container(
//         margin: EdgeInsets.only(left: 5,right: 5,top: 15),
//         height: 320,
//         width: 500,
//
//         decoration: BoxDecoration(
//           color: Colors.red,
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//
//         child: Column(
//           children: [
//
//             Container(
//               padding: EdgeInsets.only(left: 20,right:20,top: 15),
//
//
//               child:  Row(
//
//                 children: [
//                   Text('Cityview Court ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
//                   Spacer(),
//
//                   Container(
//                     width: 80,
//                     height: 24,
//                     decoration: BoxDecoration(
//                       color: Colors.deepOrangeAccent,
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                     ),
// // padding: EdgeInsets.only(left: ),
//                     child: Row(
//                       children: [
//                         Center(
//                           child: Container(
//                             padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
//                             child: Row(
//                               children: [
//                                 Icon(Icons.star,color: Colors.white,size: 15,),
//                                 Text('4.8',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,)
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//
//                 ],
//               ),
//             ),
//
//             Container(
//               padding: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 20),
//               child: Column(
//                 children: [
//                   Text('Lorem Ipsum has been the industrys '
//                       'standard dummy text ever since the 1500s, '
//                       'when an unknown printer took a galley '
//                       'of type and scrambled it'
//                       ' to make a type specimen book.' )
//                 ],
//               ),
//             ),
//
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//
//                     children: [
//                       Opacity(
//                         opacity: 0.8,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                           ),
//                           width: 130,
//                           margin: EdgeInsets.only(left: 20,bottom: 10),
//                           padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
//                           child: Column(
//                             children: [
//                               Text('COURTS',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
//                               Text('5 Courts',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//
//
//                             ],
//                           ),
//                         ),
//                       ),
//                       Opacity(
//                         opacity: 0.8,
//                         child: Container(
//                           width: 130,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                           ),
//
//                           margin: EdgeInsets.only(right: 20,bottom: 10),
//
//                           padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
//                           child: Column(
//                             children: [
//                               Text('OPEN UNTIL',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
//                               Text('22:00 PM',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//
//
//                             ],
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Opacity(
//                         opacity: 0.8,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                           ),
//                           width: 130,
//                           margin: EdgeInsets.only(left: 20),
//                           padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
//                           child: Column(
//                             children: [
//                               Text('SHOWER AREA',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
//                               Text('Yes',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
//
//
//                             ],
//                           ),
//                         ),
//                       ),
//                       Opacity(
//                         opacity: 0.8,
//                         child: Container(
//                           width: 130,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                           ),
// // color: Colors.blue,
//                           margin: EdgeInsets.only(right: 20,),
//                           padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
//                           child: Column(
//                             children: [
//                               Text('PARKING',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
//
//                               Text('6 Sopts',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//
//
//                             ],
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//
//               ],
//             ),
//
//             Opacity(
//               opacity: 0.8,
//               child: Container(
//                 margin: EdgeInsets.only(top: 20),
//                 height: 63,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20),
//                   ),
//                 ),
//                 width: 500,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Center(
//
//                       child: Container(
//                         padding: EdgeInsets.only(left: 30),
//                         margin: EdgeInsets.all(5),
//                         child: Row(
//                           children: [
//                             Text('\$20 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
//                             Text('/ Hour',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 15),),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: 120,
//                       height: 30,
//                       margin: EdgeInsets.only(right: 30),
//                       decoration: BoxDecoration(
//                         color: Colors.orangeAccent,
//                         borderRadius: BorderRadius.all(Radius.circular(20)),
//                       ),
//
//                       child: Center(
//                         child: GestureDetector(
//                           onTap: () {
//
//
//                           },
//                           child: Text(
//                             'Book Court',
//                             style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.white ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             //on boarding:
//       import 'package:flutter/material.dart';
//     import 'package:introduction_screen/introduction_screen.dart';
//     import 'package:tennis_court_booking/home_page.dart';
//     import 'package:tennis_court_booking/login.dart';
//
//     import 'button_widget.dart';
//
//     class OnBoardingPage extends StatefulWidget {
//     @override
//     _OnBoardingPageState createState() => _OnBoardingPageState();
//     }
//
//       class _OnBoardingPageState extends State<OnBoardingPage> {
//     @override
//     Widget build(BuildContext context) {
//     return Scaffold(
//
//
//     body: Container(
//     child: Column(
//     children: [
//     SizedBox(height: 80,),
//     Container(
//     child: Text(
//     'Book a tennis court',
//     style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
//     ),
//     ),
//     Container(
//     padding: EdgeInsets.all(20),
//     child: Text(
//     'Lorem Ipsum has been the industrys '
//     'standard dummy text ever since the 1500s, '
//     'when an unknown printer took a galley '
//     'of type and scrambled it'
//     ' to make a type specimen book.',
//
//     style:TextStyle(fontSize: 15,color: Colors.grey),
//     ),
//
//     ),
//     SizedBox(
//     height: 120,
//     ),
//
//     Container(
//     child: Image.asset(
//     'images/tennis_ball.jpg',
//     height: 50,
//     width: 50,
//     ),
//     ),
//
//     SizedBox(height: 100,),
//
//     GestureDetector(
//     onTap: (){ setState(() {
//     Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => HomePage()));
//     });},
//
//     child: Container(
//     width: 300,
//     height: 60,
//     decoration: BoxDecoration(
//     borderRadius: BorderRadius.all(Radius.circular(30)),
//     color: Colors.deepOrange
//     ),
//     child: Center(
//     child: Text(
//     'Get Started',
//     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//
//     ),
//     ),),
//     ),
//     SizedBox(height: 10,),
//
//
//     Container(
//     height: 2,
//     width: double.infinity,
//     color: Colors.grey[400],
//     ),
//     Container(
//     margin: EdgeInsets.all(20),
//     child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Text('Already a member?',
//     style: TextStyle(color: Colors.grey),
//     ),
//
//     GestureDetector(
//     onTap: (){
//     setState(() {
//     Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => LoginPage()),
//     );
//     });
//     },
//     child: Text(
//     '  Log in',
//     style: TextStyle(fontWeight: FontWeight.bold),
//     ),
//     )
//     ],
//     ),
//     )
//     ],
//     ),
//     ),
//     // child:IntroductionScreen(
//     //   pages: [
//     //     PageViewModel(
//     //       title: 'Book a tennis court',
//     //       body:'Lorem Ipsum has been the industrys '
//     //     'standard dummy text ever since the 1500s, '
//     //     'when an unknown printer took a galley '
//     //         'of type and scrambled it'
//     //         ' to make a type specimen book.',
//     //       image: buildImage('images/tennis_ball.jpg'),
//     //       decoration:  getPageDecoration(),
//     //       footer: ButtonWidget(
//     //         text: 'Get Started',
//     //
//     //       )
//     //
//     //     ),
//     //   ],
//     //   dotsDecorator: DotsDecorator(
//     //
//     //   ),
//     //   done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
//     //   onDone: () => Navigator.push(
//     //     context,
//     //     MaterialPageRoute(builder: (context) => HomePage()),
//     //   ),
//     // ),
//     //
//     );
//
//     }
//
//     // Widget buildImage(String path) =>
//     //     Center(child: Image.asset(path, width: 350,));
//     //
//     // PageDecoration getPageDecoration() => PageDecoration(
//     //   titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
//     //   bodyTextStyle: TextStyle(fontSize: 20),
//     //   pageColor: Colors.white,
//     // );
//     }
//
//
//
//       ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
