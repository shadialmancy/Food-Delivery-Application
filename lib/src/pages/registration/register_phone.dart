import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramayo_client_app/src/pages/registration/constants.dart';

class RegisterPage5 extends StatefulWidget {
  @override
  _RegisterPage5State createState() => _RegisterPage5State();
}

class _RegisterPage5State extends State<RegisterPage5> {
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
        header_text("Ingresa tu numero"),
        const SizedBox(
          height: 15,
        ),
        row(),
        const SizedBox(
          height: 15,
        ),
        description_text(
            "Para continuar recibiras un mensaje SMS a el numero de telefono que ingresaste para poder verificar tu numero."),
        const SizedBox(
          height: 100,
        ),
        Row(
          children: [
            const SizedBox(
              width: 240,
            ),
            nextButton()
          ],
        )
      ],
    );
  }

  Widget row() {
    return Row(
      children: [
        country(),
        const SizedBox(
          width: 20,
        ),
        phoneTextField()
      ],
    );
  }

  Widget phoneTextField() {
    return Container(
      height: 60,
      width: 200,
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
          ),
          hintText: "phone number",
        ),
      ),
    );
  }

  Widget country() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      width: 120,
      height: 60,
      child: CountryCodePicker(
        initialSelection: '+52',
        hideMainText: true,
        showDropDownButton: true,
      ),
    );
  }
}
