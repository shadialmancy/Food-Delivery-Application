import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';
import 'controllers/forgot_password_controller.dart';


class ForgotPage extends StatefulWidget {

  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {


  ForgotPasswordController _controller = new ForgotPasswordController();

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
      body: Container(
      width: double.infinity,
      child: Stack(
        children: <Widget>[

           pelotaroja(),
          
           SingleChildScrollView(
             child: pagina(context)
           ),
        
        ],
      ),
    )
   );
  }

  Widget pagina(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: MediaQuery.of(context).size.height,
      child:  Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              
              title(),
                
              
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    inputPasswordAntigua(),
                    
                    const SizedBox(height: 9),

                    inputNuevaPassword(),
                    
                    const SizedBox(height: 9),

                    inputConfirmaPassword(),

                    bottonLogin(),
                  
                  ],
                ),
              ),
              

            ],
          ),
      ),
    );
  }


  Widget bottonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
      child: ElevatedButton(
        onPressed: (){},
        child: const Text('Restablecer'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }

  Widget title() {
    return const FittedBox(
      child: Text(
          "Olvidaste tu contraseña ?",
            style: TextStyle(
              fontSize: 25, 
              color: const Color.fromRGBO(252, 73, 73, 0.80), 
              fontWeight: FontWeight.bold, 
              letterSpacing: 2
            )
        ),
    );
  }

  Widget inputPasswordAntigua() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      height: 50,
      decoration: BoxDecoration(color: const Color.fromRGBO(231, 13, 50, 0.09019607843137255), borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        controller: _controller.passwordActual,
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Ingresa contraseña actual',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Color(0xFFa7001c),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xFFE70D32),
          ),
        ),
      ),
    );
  }

  Widget inputNuevaPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor, borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        controller: _controller.nuevaPassword,
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Nueva Contraseña',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor)),
      ),
    );
  }

  Widget inputConfirmaPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor, borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        controller: _controller.confirmarPasswordNueva,
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Confirma Contraseña',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor)),
      ),
    );
  }


  Widget pelotaroja(){
    return Stack(
      children: [

        Positioned(
            top: -80,
            left: -100,
            child: Container(
                width: 240, 
                height: 230, 
                decoration: BoxDecoration(
                  color: MyColors.primaryColor, 
                  borderRadius: BorderRadius.circular(100)
                )
            )
        ),

        Positioned(
          top: 60,
          left: 6,
          child: Row(
            children: <Widget>[
        
             GestureDetector(
               onTap: (){
                 
               },
               child: const Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
               ),
             ),

             const SizedBox(width: 5),

             const Text(
              'Password',
               style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold, 
                fontSize: 22
              ),
             ),
            
            ]
          ),
        ),
      ],
    );
  }



}









