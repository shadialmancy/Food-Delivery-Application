import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Center(
        child: column(context)
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }



  Widget column(BuildContext context){
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            SizedBox(height: 150),

            title(),
            
            SizedBox(height: 130),
            
            inputEmail(),

            SizedBox(height: 10),
            
            inputPassword(),

            SizedBox(height: 20),


            bottonLogin(),


            SizedBox(height: 20),

            
            forgotPassword(),

            SizedBox(height: 0),


            orIcon(),
            
            register(),

            SizedBox(height: 0),
            
            socialIcon(),
          ],
        );
  }

  Widget inputEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromRGBO(231, 13, 50, 0.09),
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo electronico',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Color(0xFFa7001c),
          ),
          prefixIcon: Icon(
            Icons.email,
            color: Color(0xFFE70D32),
          ),
        ),
      ),
    );
  }

  Widget inputPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: 300,
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextFormField(
       obscureText: true,
       keyboardType: TextInputType.text,
       decoration: InputDecoration(
        hintText: 'Contraseña',
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(15),
        hintStyle: TextStyle(
          color: MyColors.primaryColorDark
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: MyColors.primaryColor
        )
       ),
      ),
    );
  }

  Widget bottonLogin(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: ElevatedButton(
       onPressed: (){}, 
       child: Text('Login'),
       style: ElevatedButton.styleFrom(
         primary: MyColors.primaryColor,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30)
         ),
         padding: EdgeInsets.symmetric(vertical: 15)
       ),
      ),
    );
  }

  Widget forgotPassword(){
    return TextButton(
      onPressed: () {},
      child: Text('Forgot Password ?', style: TextStyle(color: Colors.black)),
    );
  }

  Widget register(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text("Don\'t have an account yet?"),
                
        TextButton(
          onPressed: () {}, 
          child: Text(
            "Register", 
            style: TextStyle(
              color: Colors.black
            )
          )
        )
      ],
    );
  }

  Widget socialIcon(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
               
        IconButton(
          onPressed: () {}, 
          icon: Icon(FontAwesomeIcons.googlePlus), color: Colors.red, iconSize: 50
        ),
               
        SizedBox(width: 10),
               
        IconButton(
          onPressed: () {}, 
          icon: Icon(FontAwesomeIcons.facebook), color: Colors.red, iconSize: 50
        ),
               
        SizedBox(width: 10),
               
        IconButton(
          onPressed: () {}, 
          icon: Icon(FontAwesomeIcons.twitter), color: Colors.red, iconSize: 50
        )
      ],
    );
  }

  Widget title(){
    return Text(
      "LYZOO", 
      style: TextStyle(
        fontSize: 98, 
        color: Colors.red, 
        fontWeight: FontWeight.bold, 
        letterSpacing: 2
      )
    );
  }

  Widget orIcon(){
    return Container(
      child: Row(
       children: [
                  
        Expanded(
         child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 15.0), child: Divider(indent: 30, color: Colors.black, height: 0)
         )
        ),

        Text("OR"),

        Expanded(
         child: Container(
          margin: const EdgeInsets.only(left: 15.0, right: 10.0), child: Divider(color: Colors.black, height: 0, endIndent: 30)
         )
        ),
       ],
      ),
    );
  }




}