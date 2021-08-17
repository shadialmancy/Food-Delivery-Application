import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage_1 extends StatefulWidget {
  const RegisterPage_1({Key? key}) : super(key: key);

  @override
  _RegisterPage_1State createState() => _RegisterPage_1State();
}

class _RegisterPage_1State extends State<RegisterPage_1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: column(context),
      ),
    );
  }

  Widget column(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        description(),
        image(),
        registerButton()
      ],
    );
  }

  Widget description() {
    return RichText(
      textAlign: TextAlign.justify,
      text: const TextSpan(
        text: "Al seleccionar \"Estoy de acuerdo\" a "
            "continuación, he revisado y acepto las ",
        style: TextStyle(fontSize: 19, color: Colors.black),
        children: const <TextSpan>[
          TextSpan(
              text: 'Condiciones de uso',
              style: TextStyle(fontSize: 19, color: Color(0xff02bc74))),
          TextSpan(
            text: ' y reconozco el',
            style: TextStyle(fontSize: 19, color: Colors.black),
          ),
          TextSpan(
            text: ' Aviso de privacidad.',
            style: TextStyle(fontSize: 19, color: Color(0xff3dc66b)),
          ),
          TextSpan(
            text: ' Tengo al menos 18 años de edad.',
            style: TextStyle(fontSize: 19, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget image(){
    return Container(child: Image.asset('images/sync_file.png'));
  }

  Widget registerButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Estoy de acuerdo"),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    );
  }
}
