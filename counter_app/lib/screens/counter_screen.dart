

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
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,
      floatingActionButton: CustomFloatingActions(),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FloatingActionButton(
          child:  Icon(Icons.add),
          onPressed: null,
        ),

        // const SizedBox(width: 20),

        FloatingActionButton(
          child: Icon(Icons.restart_alt),
          onPressed: null,
        ),

        // const SizedBox(width: 20),

        FloatingActionButton(
          child:  Icon(Icons.exposure_minus_1_outlined),
          onPressed: null,
        ),
      ],
    );
  }
}