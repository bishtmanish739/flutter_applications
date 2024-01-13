import 'dart:async';

import 'package:flutter/material.dart';
import 'package:random_fact/constants/colors.dart';
import 'package:random_fact/screens/home/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: AppColors.greentouch),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Facts",
              style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  fontSize: 30),
            ),
            const Icon(
              Icons.fact_check,
              color: Colors.black,
              size: 40,
            )
          ],
        )),
      ),
    );
  }
}
