import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/registration/constants.dart';

class RegisterPage6 extends StatefulWidget {
  const RegisterPage6({Key? key}) : super(key: key);

  @override
  _RegisterPage6State createState() => _RegisterPage6State();
}

class _RegisterPage6State extends State<RegisterPage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: column(context),
        ),
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
        header_text("Verifica tu numero de celular"),
        const SizedBox(
          height: 15,
        ),
        description_text(
            "Ingresa los 4 digitos que se enviaron a 938 146 1964"),
        const SizedBox(
          height: 15,
        ),
        textfield("Ingresa el codigo de 4 digitos", TextInputType.text),
        const SizedBox(
          height: 15,
        ),
        resendButton(),
        const SizedBox(
          height: 100,
        ),
        row()
      ],
    );
  }

  Widget resendButton(){
    return TextButton(onPressed: (){},
        child:const Text("Reenviar el codigo SMS", style: const TextStyle(fontSize:15,color: Color(
            0xff41b69a)),)
    );
  }

  Widget row(){
    return Row(
      children: [
        backButton(),
        const SizedBox(
          width: 140,
        ),
        nextButton()
      ],
    );
  }
}
