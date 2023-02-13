import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
         child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.indigo,
          //   shape: const StadiumBorder(),
          //   elevation: 0
          // ),
          onPressed: () {
            
          }, 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 20),),
          )),
      ),
      floatingActionButton:FloatingActionButton(
        
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.close)
      
      ),
    );
  }
}