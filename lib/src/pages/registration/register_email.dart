import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/registration/constants.dart';

class RegisterPage4 extends StatefulWidget {
  const RegisterPage4({Key? key}) : super(key: key);

  @override
  _RegisterPage4State createState() => _RegisterPage4State();
}

class _RegisterPage4State extends State<RegisterPage4> {
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
        header_text("Ingresa tu correo electronico"),
        const SizedBox(
          height: 15,
        ),
        description_text(
            "los recibos se enviarán a su correo electrónico"),
        const SizedBox(
          height: 15,
        ),
        textfield("Ingresa tu email", TextInputType.emailAddress),
        const SizedBox(
          height: 100,
        ),
        row()
      ],
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
