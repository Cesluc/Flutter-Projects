import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {
   
  const BuyScreen({Key? key}) : super(key: key);
  
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
        title: const Text('Sales Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                // DatePicker Widget
                
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Provider',
                    hintText: 'Choose the provider'
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Provedor 1',child: Text('Provedor 1')),
                    DropdownMenuItem(value: 'Provedor 2',child: Text('Provedor 2')),
                    DropdownMenuItem(value: 'Provedor 3',child: Text('Provedor 3')),
                    DropdownMenuItem(value: 'Provedor 4',child: Text('Provedor 4')),
                  ], 
                  onChanged: (value) {
                    
                  },
                ),
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
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Container type'
                  ),
                  items: const [
                    DropdownMenuItem(value: 'HC',child: Text('HC')),
                    DropdownMenuItem(value: 'NOR',child: Text('NOR')),
                  ], 
                  onChanged: (value) {
                    
                  },
                ),
                const SizedBox(height: 30,),
                CustomInputField(labelText:'Price',hintText: 'Enter the purchase price',keyboardType: TextInputType.number, formProperty: 'price', formValues: formValues),
                const SizedBox(height: 30,),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Incoterms',
                    hintText: 'Select the Incoterm'
                  ),
                  items: const [
                    DropdownMenuItem(value: 'FCA',child: Text('FCA (Free Carrier)')),
                    DropdownMenuItem(value: 'FAS',child: Text('FAS (Free Alongside Ship)')),
                  ], 
                  onChanged: (value) {
                    
                  },
                ),
                const SizedBox(height: 30,),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Available Ports'
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