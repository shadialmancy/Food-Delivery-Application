import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/register_password_controller.dart';

class RegisterPassword extends StatefulWidget {
  const RegisterPassword({Key? key}) : super(key: key);

  @override
  _RegisterPasswordState createState() => _RegisterPasswordState();
}

class _RegisterPasswordState extends State<RegisterPassword> {

  RegisterPasswordController _controller = new RegisterPasswordController();

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
          padding: const EdgeInsets.only(top: 10),
          child: column(context),
        ),
    );
  }

  Widget column(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const SizedBox(height: 50),
        
        header_text("Ingresa tu contraseña"),
        
        const SizedBox(height: 15),
        
        description_text("Tu contraseña debe contener al menos 8 caracteres, y al menos una letra y un numero"),
        
        const SizedBox(height: 15),
        
        _inputPassword(),
        
        Expanded(
          child: Container(),
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
    );
  }

  bool passwordVisible = false;

  

  Widget header_text(String text) {
   return Padding(
     padding: const EdgeInsets.only(left: 20, top: 50),
     child: Text(
      text,
      style: const TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
     ),
   );
  }

  Widget _inputPassword(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: 389,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        controller: _controller.passwordController,
        obscureText: passwordVisible,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Ingresa tu cont',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            suffixIcon: IconButton(
              icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              },
            )),
      ),
    );
  }

  Widget description_text(String text) {
   return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Text(text)
   );
  }

  Widget bottonNext(){
    return GestureDetector(
      onTap: _controller.goToRegisterNameYLastName,
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
