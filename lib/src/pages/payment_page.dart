import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: column(context),
        ),
      ),
    );
  }
}

Widget column(BuildContext context) {
  return Stack(
    children : [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          row(),
          const SizedBox(
            height: 20,
          ),
          headertext("Metodos de pago"),
          Container(
            padding: const EdgeInsets.all(10),
            width: 340,
            child: Column(
              children: [
                textfield(),
                const SizedBox(
                  height: 10,
                ),
                passcode(),
                const SizedBox(
                  height: 15,
                ),

              ],
            ),
          ),
          paymentMethod(),
          const SizedBox(
            height: 20,
          ),
          headertext("Creditos"),
          applyCredits()
        ],
      ),
    ]
  );
}

Widget row() {
  return Row(
    children: [closeButton(), headertext("Opciones de pago")],
  );
}

Widget closeButton() {
  return Container(
    child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.times),
          iconSize: 50,
        ),
      ],
    ),
  );
}

Widget headertext(String text) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Text(text,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
  );
}

Widget textfield() {
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(
        FontAwesomeIcons.moneyBillWave,
      ),
    ),
  );
}

Widget passcode() {
  return TextFormField(
    keyboardType: TextInputType.phone,
    obscureText: true,
    decoration: const InputDecoration(
      icon: Icon(
        FontAwesomeIcons.solidCreditCard,
      ),
    ),
  );
}

Widget paymentMethod() {
  return InkWell(
    onTap: () {},
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.add,
            size: 45,
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Agregar metodo de pago",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}

bool isSwitched = false;

void toggleSwitch(bool isSwitched) {
  isSwitched = !isSwitched;
}

Widget applyCredits() {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        const Text(
          "Aplicar creditos",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          width: 130,
        ),
        switchButton()
      ],
    ),
  );
}

Widget switchButton() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: 34,
        height:20,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          ),
          color: Colors.black,
        ),
  ),
       Transform.scale(
            scale: 0.5,
            child: Switch(
                activeTrackColor: Colors.black,
                activeColor: Colors.white,
                inactiveTrackColor: Colors.black,
                value: isSwitched,
                onChanged: (value){
                  isSwitched=value;
                }
            )
        ),
    ],
  );
}
