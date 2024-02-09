import 'dart:async';

import 'package:dream_bell_school/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: NetworkImage('https://images.unsplash.com/photo-1557682268-e3955ed5d83f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
          fit: BoxFit.cover
          ) ,
          ),
          child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 43, right:20),
          child: Center(
            child: Text("Dream Bell Pre     ", style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: 0),),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 70, right:60),
          child: Text("School    ", style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: 0),),
        ),
        Padding(
          padding: EdgeInsets.only(left: 40, right:60, top: 20),
          child: Text("Time to Wake up   ", style: TextStyle(color: Colors.white60,
              fontWeight: FontWeight.normal, fontSize: 15, letterSpacing: 0),),
        ),
      ],
          ),
      )
    );

  }
}
