import 'package:flutter/material.dart';


class NumberPage extends StatefulWidget {

  @override
  _NumberPageState createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {

 final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

            
           _title(),


          _formulario(),

          const SizedBox(height: 30),

          _text()
            

        ],
      )
    );
  }


  Widget _title(){
    return const Padding(
      padding: EdgeInsets.only(top: 110, left: 30, bottom: 60),
      child: Text(
       'Ingresa tu numero',
       style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
       ),
      ),
    );
  }

  Widget _formulario(){
    return Form(
     key: _formKey,
     child: Row(
       children: <Widget>[

           const SizedBox(width: 30),

           _inputCountry(),

           const SizedBox(width: 20),

           _inputNumber(),

          

       ],
     ),
    );
  }

  Widget _inputNumber(){
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 50),
      width: 260,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          hintText: 'Ingresa tu numero',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.black54
          ),
        ),
      ),
    );
  }

  Widget _inputCountry(){
   return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 50),
      width: 70,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.black54
          ),
        ),
      ),
    );
 }

  Widget _text(){
    return  Padding(
     padding: const EdgeInsets.all(25),
     child: RichText(
      text: const TextSpan(
        children: [
        
        TextSpan(
          text: 'Para continuar recibiras un mensaje SMS a el numero de telefono que ingresate para poder verificar tu numero',
          style: TextStyle(
            fontWeight: FontWeight.normal, 
            color: Colors.black26
          )
        ),
        
        ]
      ),
     ),
    );
  }
 





}

