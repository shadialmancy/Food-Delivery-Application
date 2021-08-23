import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/register_email_controller.dart';

class RegisterEmail extends StatefulWidget {
  const RegisterEmail({Key? key}) : super(key: key);

  @override
  _RegisterEmailState createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  
  RegisterEmailController _controller = new RegisterEmailController();

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
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
          const SizedBox(height: 50,),
      
          header_text("Ingresa tu correo electronico"),
          
          const SizedBox(height: 15),
      
          description_text("los recibos se enviarán a su correo electrónico"),
      
          const SizedBox(height: 15),
      
          _inputNumber(),
          
          const SizedBox(height: 100),
      
      
          Container(
                margin: const EdgeInsets.only(left: 30, right: 30, top: 280),
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
      ),
    );
  }
  

  Widget header_text(String text) {
   return Padding(
     padding: const EdgeInsets.only(left: 30, top: 50),
     child: Text(
      text,
      style: const TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
     ),
   );
  }

  Widget description_text(String text) {
   return Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Text(text)
   );
  }

  Widget _inputNumber(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: 389,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        controller: _controller.emailController,
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          hintText: 'Ingresa tu email',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.black54
          ),
        ),
      ),
    );
  }

  Widget bottonNext(){
    return GestureDetector(
      onTap: _controller.goToRegisterPassword,
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