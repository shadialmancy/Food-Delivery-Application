import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/activar_ubicacion_controller.dart';

class ActivarUbicacion extends StatefulWidget {
  @override
  _ActivarUbicacionState createState() => _ActivarUbicacionState();
}

class _ActivarUbicacionState extends State<ActivarUbicacion> {

  ActivarUbicationController _controller = new ActivarUbicationController();

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
      body:// SingleChildScrollView(
       /* child: */Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
      
            _title(),
      
            _descripcion(),
      
            _inputAdress(),
      
            _activarUbicacion(),
      
            Expanded(
              child: Container(),
            ),

            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
      padding: EdgeInsets.only(top: 85, left: 20),
      child: const Text(
        'Busca comida cerca de ti',
        style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontWeight: FontWeight.w500
        )
      ),
    );
  }

  Widget _descripcion(){
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Text(
        'Para que nuestra app funcione correctamente necesitamos saber tu ubicacion',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey[600],
          fontWeight: FontWeight.normal,
        )
      ),
    );
  }

  Widget _inputAdress(){
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      width: 389,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        controller: _controller.adressController,
        keyboardType: TextInputType.streetAddress,
        decoration: const InputDecoration(
          hintText: 'Ingresa tu direccion',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.black54
          ),
        ),
      ),
    );
  }

  Widget _activarUbicacion(){
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: const  EdgeInsets.only(top: 50, left: 20),
        child: Row(
          children: <Widget>[
    
            const Icon(
              FontAwesomeIcons.locationArrow
            ),
    
            const SizedBox(width: 22),
    
            const Text(
              'Activar Ubicacion',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500
              )
            ),
    
          ],
        ),
      ),
    );
  }
 
  Widget bottonNext(){
    return GestureDetector(
      onTap: _controller.goToHomePage,
      child: Container(
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
    
            const SizedBox(width: 5),
    
            const Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
            ),
    
            const Icon(
              FontAwesomeIcons.arrowRight,
              color: Colors.white
            ),
    
            const SizedBox(width: 3),
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

            const SizedBox(width: 3),
    
            const Icon(
              FontAwesomeIcons.arrowLeft,
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