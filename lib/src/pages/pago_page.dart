import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagoPage extends StatefulWidget {
  PagoPage({Key? key}) : super(key: key);

  @override
  _PagoPageState createState() => _PagoPageState();
}

class _PagoPageState extends State<PagoPage> {

  List<int> card = [1,2,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black
        ),
        title: const Padding(
          padding: const EdgeInsets.only(left: 100),
          child: const Text(
            'Pago',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[


           Expanded(
             flex: 1,
             child: ListView.builder(
              itemCount: card.length,
              itemBuilder: (_, i){
                return Column(
                  children: [

                    _tarjetaPago(card[i]),

                    const Divider(
                      height: 1,
                      indent: 75,
                      thickness: 1,
                    ),
                  ],
                );
              }
             ),
           ),

           const Divider(
            height: 1,
            indent: 75,
            thickness: 1,
           ),

           
           _efectivo(),
           
           const Divider(
            height: 1,
            indent: 75,
            thickness: 1,
           ),
           
           Expanded(
            flex: 2,
            child: _agregarTarjeta()
           ),


        ],
      ),
    );
  }


  Widget _tarjetaPago(card){
   return ListTile(
    leading: Icon(
      FontAwesomeIcons.creditCard,
      color: Colors.blue[900]
    ),
    title: const Text(
      'xxxx - 9999',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    ),
    trailing: const Icon(
      FontAwesomeIcons.chevronRight,
      color: Colors.black
     ),
   );
  }

  Widget _efectivo(){
    return ListTile(
      leading: Icon(
      FontAwesomeIcons.moneyBillAlt,
      color: Colors.greenAccent[400]
    ),
    title: const Text(
      'Efectivo',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    ),
    trailing: const Icon(
      FontAwesomeIcons.chevronRight,
      color: Colors.black
     ),
   );
  }

  Widget _agregarTarjeta(){
    return  const ListTile(
      leading: Icon(
      FontAwesomeIcons.plus,
      color: Colors.black
    ),
    title: const Text(
      'Agregar Metodo de Pago',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold
      ),
    ),
    trailing: const Icon(
      FontAwesomeIcons.chevronRight,
      color: Colors.black
     ),
   );
  }


}