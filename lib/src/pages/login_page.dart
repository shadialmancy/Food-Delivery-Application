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
        body: Container(
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          // Positioned(top: -80, left: -100, child: circle()),
          // Positioned(
          //   top: 60,
          //   left: 25,
          //   child: text(),
          // ),
          SingleChildScrollView(child: pagina(context))
        ],
      ),
    ));
  }

  Widget pagina(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Center(child: title())),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: inputEmail(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: inputPassword(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: bottonLogin(),
          ),
          forgotPassword(),
          orIcon(),
          register(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: socialIcons(),
          ),
        ],
      ),
    );
  }

  Widget inputEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
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
      margin: const EdgeInsets.symmetric(horizontal: 20),
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
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Login'),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }

  Widget forgotPassword() {
    return TextButton(onPressed: () {}, child: Text('Forgot Password ?', style: TextStyle(color: MyColors.primaryColor)));
  }

  Widget register() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don\'t have an account yet?", style: TextStyle(color: MyColors.primaryColor)),
        TextButton(onPressed: () {}, child: Text("Register", style: TextStyle(color: MyColors.primaryColor)))
      ],
    );
  }

  Widget socialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        socialIcon(icon: const Icon(FontAwesomeIcons.googlePlus), onPressed: () {}),
        const SizedBox(width: 10),
        socialIcon(icon: const Icon(FontAwesomeIcons.facebook), onPressed: () {}),
        const SizedBox(width: 10),
        socialIcon(icon: const Icon(FontAwesomeIcons.twitter), onPressed: () {}),
      ],
    );
  }

  Widget title() {
    return const Text("LYZOO", style: TextStyle(fontSize: 98, color: Colors.red, fontWeight: FontWeight.bold, letterSpacing: 2));
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

  Widget circle() {
    return Container(width: 240, height: 230, decoration: BoxDecoration(color: MyColors.primaryColor, borderRadius: BorderRadius.circular(100)));
  }

  Widget text() {
    return const Text('Login', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22));
  }
}

class socialIcon extends StatelessWidget {
  final icon;
  final Function onPressed;

  const socialIcon({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () => onPressed(), icon: icon, color: Colors.red, iconSize: 50);
  }
}
