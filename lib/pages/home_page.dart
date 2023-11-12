import 'package:flutter/material.dart';
import 'package:my_bottom_navigation_bar_app/components/list_of_items_bottom_navigation_bar.dart';
import 'package:my_bottom_navigation_bar_app/pages/photos_page.dart';
import 'package:my_bottom_navigation_bar_app/pages/posts_page.dart';
import 'package:my_bottom_navigation_bar_app/pages/widgets_page.dart';



class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();}


class _HomePageState extends State<HomePage> {
int currentItemIndex = 1;

void tappedItem (int index){
  setState(() {
    currentItemIndex = index;
  });
}

Widget getMainPage (int index) {
  switch(index) {
      case 0 : return const PostsPage();
    case 1: return const PhotosPage();
    case 2: return const WidgetsPage();
    default: return const PhotosPage();}



}



  @override
Widget build (BuildContext context)
{ return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: const Text('Pages for Bottom Navigation Bar'),
),
body: getMainPage(currentItemIndex),
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.blueGrey[500],
      selectedLabelStyle:TextStyle(
          color: Colors.red[900], //не змінює колір
          fontSize: 25),
    unselectedFontSize: 18,
    unselectedLabelStyle: TextStyle(color: Colors.white) , // не змінює колір
    currentIndex: currentItemIndex,
    onTap: tappedItem,
      items: bottomItems) ,
);

}
}