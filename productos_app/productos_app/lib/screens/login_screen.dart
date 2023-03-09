import 'package:flutter/material.dart';
import 'package:productos_app/providers/login_form_provider.dart';
import 'package:provider/provider.dart';

import '../ui/input_decorations.dart';
import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 250,
          ),
          CardContainer(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 30,
                ),
                ChangeNotifierProvider(
                  create: (context) => LoginFormProvider(),
                  child: const _LoginForm(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Create new account',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {

    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(
      child: Form(
        //TODO: Mantener la referencia al x
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,

        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'project-r@vipa.com',
                  labelText: 'Email Address',
                  prefixIcon: Icons.alternate_email_sharp),
                  onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(pattern);
                return regExp.hasMatch(value ?? '')
                  ? null
                  : 'The entered value does not look like an email';
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '********',
                  labelText: 'Password',
                  prefixIcon: Icons.lock_outline),
                  onChanged: (value) => loginForm.password = value,
              validator: (value) {
                
                if ( value != null && value.length >= 8 ) return null;
                return 'Password must contain at least 8 characters';
                
              }
            ),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  )),
              onPressed: () {
                //TODO: login Form
                if (!loginForm.isValidForm()) return;

                Navigator.pushReplacementNamed(context, 'home');

              },
            )
          ],
        ),
      ),
    );
  }
}
