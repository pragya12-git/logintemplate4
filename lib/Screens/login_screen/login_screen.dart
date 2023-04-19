import 'package:flutter/material.dart';
import 'package:logintemplate1/Screens/home_screen/home_screens.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
            key: formkey,
            child: SingleChildScrollView(
                reverse: true,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 50,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Username",
                          ),
                          validator: (String? value) {
                            if (value!.trim().isEmpty) {
                              return "Username must be required";
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                          validator: (String? value) {
                            if (value!.trim().isEmpty) {
                              return "password must be required";
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => Homescreen())));
                            }
                          },
                          child: Text("Login")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              //signup screen
                            },
                          ),
                        ],
                      ),
                    ]))));
  }
}
