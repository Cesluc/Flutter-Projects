import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider && Checks'),
      ),
      body: SingleChildScrollView( // Permite ver la imagen completa
        child: Column(
          children: [
      
            Slider.adaptive(
              min: 20,
              max: 400,
              activeColor: AppTheme.primary,
              // divisions: 10,
              value: _sliderValue, 
              onChanged: (value){
                _sliderValue = value;
                setState(() {
                  
                });
              }
            ),
      
            Image(
              image: NetworkImage('https://pbs.twimg.com/profile_images/1455573076016574467/nmol2VFD_400x400.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),

            const SizedBox( height: 50,)
      
          ],
        ),
      )
    );
  }
}