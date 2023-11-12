import 'package:flutter/cupertino.dart';

import '../components/list_of_photos.dart';

class PhotosPage extends StatelessWidget {
const PhotosPage({super.key});

@override
  Widget build (BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: GridView.builder(
      itemCount: listPhotos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context,int index )=> listPhotos[index],

    ),
  );

}

}