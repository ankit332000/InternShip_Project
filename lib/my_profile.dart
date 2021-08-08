import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 60),

          child: Text('My Profile',
            style: TextStyle(color:Color(0xFF4595BD),fontWeight: FontWeight.bold ),



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


              //start
              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/ic_userplaceholder.png",



                    ),

                  ),

                ),

                child: Container(
                  margin: EdgeInsets.only(left: 238,right: 142),
                  child: Image.asset("images/ic_camera.png",
                  height: 150,
                    width: 150,

                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left: 8,right: 8),
                    child: Text(
                      'Full Name'
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
                        'Email Id'
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


                ],
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: GestureDetector(
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
                        'Update',
                        style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
