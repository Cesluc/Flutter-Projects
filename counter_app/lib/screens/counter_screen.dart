

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  void increase(){
    counter++;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  void reset(){
    counter = 0;
    setState(() {});
  }


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
      floatingActionButton:  CustomFloatingActions(
        increaseFn: increase, 
        decreaseFn: decrease, 
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    super.key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        FloatingActionButton(
          child:  const Icon(Icons.add),
          onPressed:()=> increaseFn(),
        ),

        // const SizedBox(width: 20),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: (){
            resetFn();
          },
        ),

        // const SizedBox(width: 20),

        FloatingActionButton(
          child:  const Icon(Icons.exposure_minus_1_outlined),
          onPressed: ()=> decreaseFn(),
        ),
      ],
    );
  }
}