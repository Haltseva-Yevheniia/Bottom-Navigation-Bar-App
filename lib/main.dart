import 'package:flutter/material.dart';
import 'package:my_bottom_navigation_bar_app/pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp ({super.key});

  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      home: HomePage(),
    );

  }

}