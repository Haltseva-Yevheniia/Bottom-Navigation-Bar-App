import 'package:flutter/cupertino.dart';
import 'package:my_bottom_navigation_bar_app/components/post_item.dart';

class PostsPage extends StatelessWidget{
  PostsPage ({super.key});

  @override
  Widget build (BuildContext context) {
    return SingleChildScrollView(
      child: Column(
             children: listOfPostItems,
      ),
    );
  }

}