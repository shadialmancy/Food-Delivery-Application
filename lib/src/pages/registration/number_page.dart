import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ramayo_client_app/src/pages/controllers/number_controller.dart';


class NumberPage extends StatefulWidget {

  @override
  _NumberPageState createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {

 final _formKey = GlobalKey<FormState>();

 NumberController _controller = new NumberController();
 
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

            
           _title(),


          _formulario(),

          const SizedBox(height: 30),

          _text(),
          
          const SizedBox(height: 280),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              bottonBack(),

              bottonNext(),
            

            ],
          ),
          ),

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
            color: Colors.black38
          )
        ),
        
        ]
      ),
     ),
    );
  }
 
  Widget bottonNext(){
    return GestureDetector(
      onTap: _controller.goToVerificaTuNumero,
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

