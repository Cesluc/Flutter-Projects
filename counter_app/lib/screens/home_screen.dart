

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) { // build context: sirve para saber el contexto en el que el widget esta siendo construido

const fontSize30 = TextStyle(fontSize: 30);

    return  Scaffold( //Canvas donde se ponen los widgets
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // sirve para alinear de manera relativa al widget mas grande
          children:  const <Widget> [
            Text('Click counter',style: fontSize30),
            Text('10',style: fontSize30),
          ],
        ),
      ),
    );
  }

}