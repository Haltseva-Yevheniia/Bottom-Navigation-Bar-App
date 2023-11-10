import 'package:flutter/cupertino.dart';
import 'package:my_bottom_navigation_bar_app/components/texts_for_posts.dart';

class PostItem extends StatelessWidget
{ String photo;
String text;
  PostItem({super.key,
   required this.photo  ,
   required this.text }); //'Alkmaar. No discription'

  @override
  Widget build (BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Container(
      child: ListView(
  children: [
      SizedBox( width: 100, height:100,
          child: Image.asset(photo, fit: BoxFit.cover,)),
      Text(text),

  ],
  ),
      ),],
      ),
    );
  }
}

List <String> photos = [
  'assets/alkmaar.jpg'
  'assets/alkmaar1.jpg'
  'assets/alkmaar2.jpg'
  'assets/den_haag.jpg'
  'assets/Den_Haag2.jpg'
  'assets/image_sea.jpg'
  'assets/koln.jpg'
  // 'assets/images/alkmaar.jpg'
  // 'assets/images/alkmaar1.jpg'
  // 'assets/images/alkmaar2.jpg'
  // 'assets/images/den_haag.jpg'
  // 'assets/images/Den_Haag2.jpg'
  // 'assets/images/image_sea.jpg'
  // 'assets/images/koln.jpg'
];
  List<String> texts = [
    'Alkmaar is a charming city located in the province of North Holland in the Netherlands. Known for its rich history and picturesque architecture, Alkmaar is often referred to as the "City of Cheese," thanks to its famous cheese market that has been held since the 16th century.'
     'The city center is characterized by well-preserved medieval buildings, narrow canals, and cobblestone streets, creating a delightful atmosphere for visitors. The Waagplein square is at the heart of Alkmaar and serves as the venue for the traditional cheese market, where wheelers and traders in traditional costumes showcase and negotiate the finest cheeses.\nBeyond its cheese heritage, Alkmaar boasts cultural attractions, including museums, galleries, and historic landmarks. The Stedelijk Museum Alkmaar showcases the city\'s art and history, while the Grote Kerk (Great Church) and the Molen van Piet (Windmill of Piet) are iconic landmarks that add to the city\'s charm.'
        'Visitors to Alkmaar can enjoy exploring its vibrant shopping streets, relaxing in its parks, and taking boat tours along the canals. The city\'s friendly atmosphere, combined with its cultural and historical significance, makes Alkmaar a delightful destination for both locals and tourists alike.'
  'Den Haag beach monuments'
    'Parlament in Den Haag',
    'Noord Sea'
    'Koln'
  ];

  List<PostItem> listOfPostItems = [
    PostItem(photo: photos[0], text: texts[0],),
    PostItem(photo: photos[1], text: texts[1],),
    PostItem(photo: photos[2], text: texts[3],),
    PostItem(photo: photos[3], text: texts[3],),
    PostItem(photo: photos[4], text: texts[4],),
    PostItem(photo: photos[5], text: texts[5],),
    PostItem(photo: photos[6], text: texts[6],),
  ];

  // List<PostItem?> buildPostItem () {
  //   for (int i = 0; i<=photos.length; i++)
  //     {
  //       PostItem newListPostItems = PostItem(photo: photos[i], text: texts[i],);
  //     }
  // }