import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "LYZOO",
                      style: TextStyle(
                          fontSize: 98,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          fillColor: Color(0xFFE7E7E7),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.red,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 0, color: Color(0xFFE7E7E7)),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          hintText: "Email",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          fillColor: const Color(0xFFE7E7E7),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.red,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(width: 0, color: Color(0xFFE7E7E7)),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          hintText: "Password",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.red,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50))),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                  margin:
                                  const EdgeInsets.only(left: 10.0, right: 15.0),
                                  child: const Divider(
                                    indent: 30,
                                    color: Colors.black,
                                    height: 0,
                                  ))),
                          const Text("OR"),
                          Expanded(
                              child: Container(
                                  margin:
                                  const EdgeInsets.only(left: 15.0, right: 10.0),
                                  child: const Divider(
                                    color: Colors.black,
                                    height: 0,
                                    endIndent: 30,
                                  ))),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don\'t have an account yet?"),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Register",
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.googlePlus),
                          color: Colors.red,
                          iconSize: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.facebook),
                          color: Colors.red,
                          iconSize: 50,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.twitter),
                          color: Colors.red,
                          iconSize: 50,
                        )
                      ],
                    )
                  ],
                ),
              ), // This trailing comma makes auto-formatting nicer for build methods.
            )));
  }
}
