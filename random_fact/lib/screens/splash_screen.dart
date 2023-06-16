import 'dart:async';

import 'package:flutter/material.dart';
import 'package:random_fact/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()))
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.green
        ),
        child:const  Center(child:  Text("Welcome",style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
