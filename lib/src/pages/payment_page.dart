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
      body: Container(
        padding: const EdgeInsets.all(5),
        child: column(context),
      ),
    );
  }
}

Widget column(BuildContext context) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        row(),
        const SizedBox(
          height: 20,
        ),
        headertext("Metodos de pago"),
        content(),
        headertext("Creditos"),
        swtich()
      ],
    ),
  );
}

Widget row(){
  return Row(
    children: [
      closeButton(),
      headertext("Opciones de pago")
    ],
  );
}

Widget content(){
  return Container(
    padding: const EdgeInsets.all(10),
    width: 300,
    child: Column(
      children: [
        textfield(),
        const SizedBox(
          height: 10,
        ),
        passcode(),
        const SizedBox(
          height: 25,
        ),
        paymentMethod(),
        const SizedBox(
          height: 20,
        ),

      ],
    ),
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
  return  Container(
    padding: const EdgeInsets.all(10),
    child: Text(text,
        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
  );
}

Widget textfield(){
  return TextFormField(
    decoration: const InputDecoration(
      icon: Icon(
        Icons.email,
      ),
    ),
  );
}

Widget passcode(){
  return TextFormField(
    keyboardType: TextInputType.phone,
    obscureText: true,
    decoration: const InputDecoration(
      icon: Icon(
        Icons.email,
      ),
    ),
  );
}

Widget paymentMethod(){
  return InkWell(
    onTap: (){},
    child: Container(
      child:Row(
        children: [
          const Icon(Icons.add,size: 30,),
          const SizedBox(
            width: 10,
          ),
          const Text("agregar metodo de pago",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
        ],
      ),
    ),
  );
}

Widget swtich (){
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        const Text("Aplicar creditos",style: TextStyle(fontSize: 20),),
        const SizedBox(
          width: 100,
        ),
        const Switch(value: true, onChanged:null)
      ],
    ),
  );
}
