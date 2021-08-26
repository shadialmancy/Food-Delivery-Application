import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ramayo_client_app/src/pages/controllers/verificar_number_controller.dart';

class VerificaNumero extends StatefulWidget {

  @override
  _VerificaNumeroState createState() => _VerificaNumeroState();
}

class _VerificaNumeroState extends State<VerificaNumero> {

  VerificarNumberController _controller = new VerificarNumberController();

  @override
  void initState() { 
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      _controller.init(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //SingleChildScrollView(
        /*child:*/ Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
      
            _title(),
      
            _text(),
      
            _inputNumber(),
      
            //const SizedBox(height: 10),

            Expanded(
              child: _reenviarCodigo()
            ),
      
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
      
                   bottonBack(),
      
                   bottonNext(),
      
                ],
              ),
            ),
             
      
          ],
        ),
      //),
    );
  }


  Widget _title(){
    return const Padding(
      padding: EdgeInsets.only(top: 85, left: 30, bottom: 30),
      child: Text(
        'Verifica tu numero de celular',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        )
      ),
    );
  }

  Widget _text(){
    return const Padding(
      padding: EdgeInsets.only(left: 30, bottom: 20, right: 30),
      child: Text(
        'Ingresa los 4 digitos que se te enviaron al numero que ingresaste',
        style: TextStyle(
          fontSize: 15,

        ),
      ),
    );
  }

  Widget _inputNumber(){
    return Form(
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        width: 389,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: TextFormField(
          controller: _controller.verificaNumberController,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            hintText: 'Ingresa el codigo de 4 digitos',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: Colors.black54
            ),
          ),
        ),
      ),
    );
  }

  Widget _reenviarCodigo(){
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
      child:/* TextButton(
         onPressed: () {}, 
         child:*/ GestureDetector(
           onTap: (){
             print('el pepe');
           },
           child: Text(
            "Reenviar el codigo SMS", 
            style: TextStyle(
             fontSize: 15,
             color: Colors.greenAccent[400]
            )
           ),
         )
      //),
    );
  }

  Widget bottonNext(){
    return GestureDetector(
      onTap: _controller.goToRegisterEmail,
      child: Container(
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
    
            const SizedBox(width: 10),
    
            const Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            ),
    
            const Icon(
              Icons.arrow_forward,
              color: Colors.white
            ),
    
          ],
        ),
        decoration: BoxDecoration(
         color: Colors.red,
         borderRadius: BorderRadius.circular(60)
        )
      ),
    );
  }

  Widget bottonBack(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
    
            const Icon(
              Icons.arrow_back,
              color: Colors.white
            ),
    
            const Text(
              'Back',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            ),
    
            const SizedBox(width: 10),
    
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(60)
        ),
      ),
    );
  }


}