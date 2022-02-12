import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(),
          CustomCardType2(imageUrl: 'http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg', imageTitle: "Send title from Widget",),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://www.mickeyshannon.com/photos/landscape-photography.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://www.publicdomainpictures.net/pictures/40000/velka/landscape-1365394831OCa.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://www.becomeabetterphotographer.co.uk/wp-content/uploads/2014/05/landscape-focusing2.jpg',),
          SizedBox(height: 10,),
          CustomCardType2(imageTitle: 'A beautiful landscape', imageUrl: 'https://verra.org/wp-content/uploads/2016/05/landscape-standard-banner-img.jpg',),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}

