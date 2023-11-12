import 'package:flutter/material.dart';
import 'package:my_bottom_navigation_bar_app/components/list_of_posts.dart';

class PostsPage extends StatelessWidget{
  const PostsPage ({super.key});

  @override
  Widget build (BuildContext context) {
    return  ListView.builder(
             itemCount: listOfPostItems.length,
               itemBuilder: (context, index) {
                 return Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: Container(
                     decoration:
                     BoxDecoration(
border: Border.all(color:  const Color(0xFF455A64), width: 5),
                       color: Colors.blueGrey[200],
                     ),
// width: 200, Color(0xFF455A64)
//                      height: 400,
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 8.0),
                           child: SizedBox(
                               width: 200,
                               height: 200,
                               child: Image.asset(listOfPostItems[index].photo, fit: BoxFit.cover,)),
                         ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                         child: Text(listOfPostItems[index].text, textAlign: TextAlign.justify,),
                       )],
                     ),
                   ),
                 );
               });

  }

}
