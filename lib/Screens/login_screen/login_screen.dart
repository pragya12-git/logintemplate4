import 'package:flutter/material.dart';
import 'package:logintemplate1/Repositories/login_repository.dart';
import 'package:logintemplate1/Screens/home_screen/home_screens.dart';
import 'package:logintemplate1/models/models.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController Usectrl = TextEditingController();
  TextEditingController passctrl = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String username = "Manjila";
  String password = "1234";

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
                          controller: Usectrl,
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
                          controller: passctrl,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              LoginRepository loginRepository =
                                  LoginRepository();

                              print("123");
                              Model userData =
                                  await loginRepository.loginRequest(
                                      username: Usectrl.text,
                                      password: passctrl.text);
                              // TODO 3. Call the LoginRepository

                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                      builder: ((context) => Homescreen(
                                            userData: userData,
                                          ))));
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
