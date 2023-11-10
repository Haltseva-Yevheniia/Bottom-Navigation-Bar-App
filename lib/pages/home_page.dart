import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bottom_navigation_bar_app/components/list_of_items_bottom_navigation_bar.dart';
import 'package:my_bottom_navigation_bar_app/pages/photos_page.dart';
import 'package:my_bottom_navigation_bar_app/pages/posts_page.dart';
import 'package:my_bottom_navigation_bar_app/pages/widgets_page.dart';



class HomePage extends StatefulWidget{
  HomePage({super.key});
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
      case 0 : return PostsPage();
    case 1: return PhotosPage();
    case 2: return WidgetsPage();
    default: return PhotosPage();}



}



  @override
Widget build (BuildContext context)
{ return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: Text('Pages for Bottom Navigation Bar'),
),
body: getMainPage(currentItemIndex),
  bottomNavigationBar: BottomNavigationBar(
    backgroundColor: Colors.blueGrey[400],
    currentIndex: currentItemIndex,
    onTap: tappedItem,
      items: bottomItems) ,
);

}
}