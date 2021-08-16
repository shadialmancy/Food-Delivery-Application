import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/registration/constants.dart';

class RegisterPage3 extends StatefulWidget {
  const RegisterPage3({Key? key}) : super(key: key);

  @override
  _RegisterPage3State createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: column(context),
      ),
    );
  }

  Widget column(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        header_text("Ingresa tu contraseña"),
        const SizedBox(
          height: 15,
        ),
        description_text(
            "Tu contraseña debe contener al menos 8 caracteres, y al menos una letra y un numero"),
        const SizedBox(
          height: 15,
        ),
        passwordField(),
        const SizedBox(
          height: 100,
        ),
        row()
      ],
    );
  }

  bool passwordVisible = false;

  Widget passwordField() {
    return Container(
      color: const Color(0xFFDEDEDE),
      child: TextFormField(
        obscureText: passwordVisible,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Ingresa tu contraseña',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            suffixIcon: IconButton(
              icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              },
            )),
      ),
    );
  }

  Widget row(){
    return Row(
      children: [
        backButton(),
        const SizedBox(
          width: 120,
        ),
        nextButton()
      ],
    );
  }
}
