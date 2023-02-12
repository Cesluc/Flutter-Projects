import 'package:flutter/material.dart';

import '../router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon,color: Colors.indigo,),
          title: Text(menuOptions[index].name),
          onTap: () {
            
            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),

            // );
            // Navigator.push(context, route); // Destruye el stack de paginas anterior, cuando no hay que regresar
            // Navigator.pushReplacement(context, route); // Destruye el stack de paginas anterior, cuando no hay que regresar
            Navigator.pushNamed(context,menuOptions[index].route);


          },
        ),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length
      )
    );
  }
}