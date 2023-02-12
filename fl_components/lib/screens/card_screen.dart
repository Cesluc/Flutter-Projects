
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children:  const [

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',),
          SizedBox(height: 10),
          CustomCardType2(name: 'Auroras boreales', imageUrl: 'https://www.tom-archer.com/wp-content/uploads/2018/01/watching_the_northern_lights_with_friends.jpg',),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://i.pinimg.com/originals/65/b9/a3/65b9a35da077570e74a3cd4b64b419af.jpg',),
          SizedBox(height: 10),

        ],
      )
    );
  }
}
