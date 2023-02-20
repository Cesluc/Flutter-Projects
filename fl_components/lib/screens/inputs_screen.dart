import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [

              CustomInputField(labelText:'Nombre',hintText: 'Nombre del usuario',keyboardType: TextInputType.name,),
              SizedBox(height: 30,),

              CustomInputField(labelText:'Apellido',hintText: 'Apellido del usuario',keyboardType: TextInputType.name,),
              SizedBox(height: 30,),

              CustomInputField(labelText:'Correo',hintText: 'Correo del usuario',keyboardType: TextInputType.emailAddress,),
              SizedBox(height: 30,),

              CustomInputField(labelText:'Contraseña',hintText: 'Contraseña del usuario',keyboardType: TextInputType.emailAddress,obscureText: true,),
              SizedBox(height: 30,),
            ]
          ),
        ),
      )
    );
  }
}