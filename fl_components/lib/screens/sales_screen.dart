import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class SalesScreen extends StatelessWidget {
   
  const SalesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map <String, dynamic> formValues = {
      'quantity' : 123,
      'price'    : 2000,
      'Comments' :'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Purchase Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText:'Order C',hintText: 'Amount of material',keyboardType: TextInputType.number, formProperty: 'quantity', formValues: formValues),
                const SizedBox(height: 30,),
                CustomInputField(labelText:'Customer',hintText: 'Customer Name',keyboardType: TextInputType.name, formProperty: 'quantity', formValues: formValues),
                const SizedBox(height: 30,),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Material',
                    hintText: 'Choose the material'

                  ),
                  items: const [
                    DropdownMenuItem(value: 'Material 1',child: Text('Material 1')),
                    DropdownMenuItem(value: 'Material 2',child: Text('Material 2')),
                    DropdownMenuItem(value: 'Material 3',child: Text('Material 3')),
                    DropdownMenuItem(value: 'Material 4',child: Text('Material 4')),
                  ], 
                  onChanged: (value) {
                    
                  },
                ),
                const SizedBox(height: 30,),
                CustomInputField(labelText:'Amount',hintText: 'Amount of material',keyboardType: TextInputType.number, formProperty: 'quantity', formValues: formValues),
                const SizedBox(height: 30,),
                CustomInputField(labelText:'Price',hintText: 'Enter the purchase price',keyboardType: TextInputType.number, formProperty: 'price', formValues: formValues),
                const SizedBox(height: 30,),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Currency',
                    hintText: 'Currency type'
                  ),
                  items: const [
                    DropdownMenuItem(value: 'USD',child: Text('USD')),
                    DropdownMenuItem(value: 'EUR',child: Text('EUR')),
                  ], 
                  onChanged: (value) {
                    
                  },
                ),
                
                const SizedBox(height: 30,),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'POD',
                    hintText: 'Port of Destination'
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Cartagena',child: Text('Cartagena')),
                    DropdownMenuItem(value: 'Buenaventura',child: Text('Buenaventura')),
                    DropdownMenuItem(value: 'Barranquilla',child: Text('Barranquilla')),
                  ], 
                  onChanged: (value) {
                    
                  },
                ),
                const SizedBox(height: 30,),
                CustomInputField(labelText:'Comments',hintText: 'Comments or any description',keyboardType: TextInputType.text, formProperty: 'first_name', formValues: formValues,maxLines: 5,),
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
              ],
            ),
          ),
        ),
      )
    );
  }
}