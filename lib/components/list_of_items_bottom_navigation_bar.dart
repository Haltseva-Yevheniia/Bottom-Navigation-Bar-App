import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomItems = [
  BottomNavigationBarItem(
    //backgroundColor: Colors.lightBlue[300],
      icon: Icon(Icons.paste_outlined, color: Colors.yellow[700],size: 50,),
      label: 'Posts' ),
  BottomNavigationBarItem(
      //backgroundColor: Colors.yellowAccent,
      icon: Icon(Icons.photo_camera, color: Colors.blue[600], size: 50),
      label: 'Photos' ),
  BottomNavigationBarItem(
      //backgroundColor: Colors.orangeAccent,
      icon: Icon(Icons.widgets_outlined, color: Colors.pinkAccent, size:50),
      label: 'My Widgets' ),

];