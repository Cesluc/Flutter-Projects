

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) { // build context: sirve para saber el contexto en el que el widget esta siendo construido
    return const Scaffold( //Canvas donde se ponen los widgets
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }

}