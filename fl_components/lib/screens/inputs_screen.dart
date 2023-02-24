import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map <String, String> formValues = {
      'first_name': 'Cesar',
      'last_name': 'Lucumi',
      'email'     :'cesar@google.com',
      'password'  : '123456',
      'role'      : 'Admin'
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
          
                CustomInputField(labelText:'Nombre',hintText: 'Nombre del usuario',keyboardType: TextInputType.name, formProperty: 'first_name', formValues: formValues),
                const SizedBox(height: 30,),
          
                 CustomInputField(labelText:'Apellido',hintText: 'Apellido del usuario',keyboardType: TextInputType.name, formProperty: 'last_name', formValues: formValues),
                const SizedBox(height: 30,),
          
                 CustomInputField(labelText:'Correo',hintText: 'Correo del usuario',keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues:formValues ,),
                const SizedBox(height: 30,),
          
                  CustomInputField(labelText:'Contraseña',hintText: 'Contraseña del usuario',keyboardType: TextInputType.emailAddress,obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),
          
                ElevatedButton(
                  onPressed: () {

                    FocusScope.of(context).requestFocus(FocusNode());

                    if(!myFormKey.currentState!.validate()){
                      print("Formulario no valido");
                      return;
                    }
                    // Imprimir valores del formulario
                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child:  Text('Guardar'))
                  )
                ),
              ]
            ),
          ),
        ),
      )
    );
  }
}
