import 'package:flutter/material.dart';
import 'package:random_fact/screens/home/home.dart';
import 'package:random_fact/screens/splash_screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Fact',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
      },
    );
  }
}
