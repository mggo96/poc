import 'package:flutter/material.dart';

import 'feedback.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/imageformfeedback.png'),
            Container(
              width: 300,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.add),
                        labelText: 'titre',
                      ),
                      onSaved: (titreInput) {
                        print('titre: $titreInput');
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.add),
                        labelText: 'description',
                      ),
                      onSaved: (descInput) {
                        print('description: $descInput');
                      },
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        _formKey.currentState?.save();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => feedBack()),
                        );
                      },
                      child: const Text('TextButton'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
