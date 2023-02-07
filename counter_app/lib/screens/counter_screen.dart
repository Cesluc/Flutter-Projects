

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  @override
  Widget build(BuildContext context) { // build context: sirve para saber el contexto en el que el widget esta siendo construido



    const fontSize30 = TextStyle(fontSize: 30);

    return  Scaffold( //Canvas donde se ponen los widgets
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // sirve para alinear de manera relativa al widget mas grande
          children:   <Widget> [
            const Text('Click counter',style: fontSize30),
            Text('$counter',style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.startDocked ,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.mode_of_travel_outlined),
        onPressed: () {
          counter++;
          setState(() {
            
          });
        },
      ),
    );
  }
}