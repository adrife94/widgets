import 'package:flutter/material.dart';
import 'package:widgets/src/pages/home.temp.dart';
import 'package:widgets/src/pages/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}