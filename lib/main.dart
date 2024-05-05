import 'package:flutter/material.dart';
import 'package:math_solution/page_one.dart';
//import 'package:math_solution/buttonn.dart';
import 'package:math_solution/main_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:PageOne(),
      routes:{
        '/mainPage':(context) => const MainPage(),
        '/onepage':(context) => const PageOne(),
        '/exitPage':(context) => const MyApp(),
        },
    );
  }
}
