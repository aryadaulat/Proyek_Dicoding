import 'package:flutter/material.dart';
import 'package:flutter_firstapp/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  String _email = '';
  String _password = '';
  final String test = 'testing';

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // flex: 1,
              Container(
                  margin: const EdgeInsets.only(top: 34.0),
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/busitera.png'),
                        const Text(
                          'BUS ITERA',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ])),

              Container(
                margin: const EdgeInsets.only(top: 40.0),
                // flex: 1,
                child: SafeArea(
                  child: Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          hintText: 'Masukkan Email',
                          labelText: 'Email',
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _email = value;
                          });
                        },
                      ),
                      TextField(
                        decoration: const InputDecoration(
                          hintText: 'Masukkan Password',
                          labelText: 'Password',
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _password = value;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Home(_email, _password)));
                            // showDialog(
                            //     context: context,
                            //     builder: (context) {
                            //       return AlertDialog(
                            //         content: Text('Hello, $_password'),
                            //       );
                            //     });
                          },
                          child: const Text("Submit"))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
