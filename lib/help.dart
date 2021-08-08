import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 90),

          child: Text('Help',
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
          child: Column(
            children: [

              SizedBox(
                height: 20,
              ),
              Text('Are you in a trouble?contact on support team',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              ),
              Image.asset("images/illustration_help.png",
              height: 153,
                width: 191,
              ),

              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left: 8,right: 8),
                    child: Text(
                        'Full Name',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 382,
                    height:58 ,
                    // margin: EdgeInsets.only(top: 390,bottom: 448,left: 16,right: 16),
                    decoration: BoxDecoration(
                      boxShadow:[ BoxShadow(
                        color: Color(0xFFE5E5E5),
                        blurRadius: 6.0,

                      ),],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),

                    padding: EdgeInsets.all(15),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,



                        hintText: 'Sage Creek',

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left: 8,right: 8),
                    child: Text(
                        'Email Id',
                        style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 390,bottom: 347,left: 16,right: 16),
                    width: 382,
                    height:58 ,
                    // margin: EdgeInsets.only(top: 390,bottom: 448,left: 16,right: 16),
                    decoration: BoxDecoration(
                      boxShadow:[ BoxShadow(
                        color: Color(0xFFE5E5E5),
                        blurRadius: 6.0,

                      ),],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),

                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'SageCreek@gmail.com',
                        hintText: 'SageCreek@gmail.com',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left: 8,right: 8),
                    child: Text(
                      'Message',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    // margin: EdgeInsets.only(top: 390,bottom: 347,left: 16,right: 16),
                    width: 382,
                    height:100 ,
                    // margin: EdgeInsets.only(top: 390,bottom: 448,left: 16,right: 16),
                    decoration: BoxDecoration(
                      boxShadow:[ BoxShadow(
                        color: Color(0xFFE5E5E5),
                        blurRadius: 6.0,

                      ),],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),

                    padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,

                        hintText: 'Enter Your message here',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
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
                      margin: EdgeInsets.only(left: 82,right: 82),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color:Color(0xFF4595BD),



                      ),


                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
