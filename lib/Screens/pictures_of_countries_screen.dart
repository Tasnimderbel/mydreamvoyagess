
import 'package:flutter/material.dart';

class PictureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('display pictures of countries'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          buildImage('https://th.bing.com/th/id/R.d51b2751c46825ff5997cba35be0015c?rik=okH9modSq8zaUw&pid=ImgRaw&r=0'),
          buildImage('https://balidave.com/wp-content/uploads/2022/11/best-hotel-bali.jpeg'),
          buildImage('https://th.bing.com/th/id/R.6fd59e4a646ae3fe57f2b31efd451662?rik=gRrPbUBTQqde5g&pid=ImgRaw&r=0'),
          buildImage('https://lp-cms-production.imgix.net/features/2017/09/dubai-marina-skyline-2c8f1708f2a1.jpg'),
          buildImage('https://th.bing.com/th/id/R.6fd59e4a646ae3fe57f2b31efd451662?rik=gRrPbUBTQqde5g&pid=ImgRaw&r=0'),
          buildImage('https://th.bing.com/th/id/R.d51b2751c46825ff5997cba35be0015c?rik=okH9modSq8zaUw&pid=ImgRaw&r=0'),
          buildImage('https://lp-cms-production.imgix.net/features/2017/09/dubai-marina-skyline-2c8f1708f2a1.jpg'),
          buildImage('https://balidave.com/wp-content/uploads/2022/11/best-hotel-bali.jpeg'),
        ],
      ),
    );
  }

  Widget buildImage(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Image.network(imageUrl),
    );
  }
}


