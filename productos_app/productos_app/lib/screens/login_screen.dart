import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class LoginScreen extends StatelessWidget {

   
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250,),
              CardContainer(
                child: Column(
                  children: [

                    SizedBox(height: 10,),
                    Text('Login', style: Theme.of(context).textTheme.headlineMedium,),
                    SizedBox(height: 30,),

                    Text('formulario')


                  ],
                ),
              )

            ],
          ),
        )
      )
    );
  }
}