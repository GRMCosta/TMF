import 'package:flutter/material.dart';
import 'package:tablemeal/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var title = "Login";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$title",
      debugShowCheckedModeBanner: false,
      home: Home(),

      theme: new ThemeData(
        primaryColor: Colors.red
      ),

    );
  }
}