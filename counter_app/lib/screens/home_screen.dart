

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) { // build context: sirve para saber el contexto en el que el widget esta siendo construido
    return  Scaffold( //Canvas donde se ponen los widgets
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          children: const <Widget> [
            Text('Click counter'),
            Text('0')
          ],
        ),
      ),
    );
  }

}