import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/login_controller.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = false;

  LoginController _controller = new LoginController();

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

          const _PelotaRojaLogin(),
          
          SingleChildScrollView(
            child: pagina(context)
          ),
        
        ],
      ),
    ));
  }

  Widget pagina(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(
            child: title(),
            flex: 4,
          ),
          
          
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                inputEmail(),
                
                inputPassword(),
                
                bottonLogin(),
                
                forgotPassword(),
                
                orIcon(),
                
                register(),
                
                socialIcon(),
              
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget inputEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      height: 50,
      decoration: BoxDecoration(color: const Color.fromRGBO(231, 13, 50, 0.09019607843137255), borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
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

  Widget inputPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor, borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryColorDark),
            prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor)),
      ),
    );
  }

  Widget bottonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: ElevatedButton(
        onPressed: _controller.goToHomePage,
        child: const Text('Login'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }

  Widget forgotPassword() {
    return TextButton(
      onPressed: _controller.goToForgotPassword, 
      child: Text(
        'Forgot Password ?', 
        style: TextStyle(
          color: MyColors.primaryColor
        )
      )
    );
  }

  Widget register() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don\'t have an account yet?", style: TextStyle(color: MyColors.primaryColor)),
        TextButton(onPressed: _controller.goToIngresaNumero, child: Text("Register", style: TextStyle(color: MyColors.primaryColor)))
      ],
    );
  }

  Widget socialIcon() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: () {
            //TODO g+
          }, icon: const Icon(FontAwesomeIcons.googlePlus), color: MyColors.primaryColor, iconSize: 50),
          const SizedBox(width: 10),
          IconButton(onPressed: () {
            //TODO face
          }, icon: const Icon(FontAwesomeIcons.facebook), color: MyColors.primaryColor, iconSize: 50),
          const SizedBox(width: 10),
          IconButton(onPressed: () {
            //TODO twitter
          }, icon: const Icon(FontAwesomeIcons.twitter), color: MyColors.primaryColor, iconSize: 50),
        ],
      ),
    );
  }

  Widget title() {
    return const FittedBox(
      child: Padding(
        padding: EdgeInsets.only(top: 80, left: 15, right: 15),
        child: Text("LYZOO",
            style: TextStyle(fontSize: 98, color: const Color.fromRGBO(252, 73, 73, 0.80), fontWeight: FontWeight.bold, letterSpacing: 2)),
      ),
    );
  }

  Widget orIcon() {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 15.0), child: Divider(indent: 30, color: MyColors.primaryColor, height: 0))),
          const Text("OR"),
          Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 10.0), child: Divider(color: MyColors.primaryColor, height: 0, endIndent: 30))),
        ],
      ),
    );
  }

}

class _PelotaRojaLogin extends StatelessWidget {
  const _PelotaRojaLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: -80,
            left: -100,
            child: Container(
                width: 240, height: 230, decoration: BoxDecoration(color: MyColors.primaryColor, borderRadius: BorderRadius.circular(100)))),
        const Positioned(
          top: 60,
          left: 25,
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        )
      ],
    );
  }
}


