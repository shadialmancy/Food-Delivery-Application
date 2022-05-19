import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ramayo_client_app/src/pages/controllers/terms_and_conditions_controller.dart';

class PrivacyAgreePage extends StatefulWidget {
  const PrivacyAgreePage({Key? key}) : super(key: key);

  @override
  _PrivacyAgreePageState createState() => _PrivacyAgreePageState();
}

class _PrivacyAgreePageState extends State<PrivacyAgreePage> {
  TermsAndConditionsController _controller = new TermsAndConditionsController();

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
      body: Stack(children: <Widget>[
        Center(child: SvgPicture.asset('assets/undraw_Sync_files_re_ws4c.svg')),
        Positioned(
          top: 75,
          child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: 370,
              child: description()),
        ),
        registerButton(),
      ]),
    );
  }

  Widget description() {
    return RichText(
      textAlign: TextAlign.justify,
      text: const TextSpan(
        text: "Al seleccionar \"Estoy de acuerdo\" a "
            "continuación, he revisado y acepto las ",
        style: TextStyle(fontSize: 19, color: Colors.black),
        children: const <TextSpan>[
          TextSpan(
              text: '"Condiciones de uso"',
              style: TextStyle(fontSize: 19, color: Color(0xff02bc74))),
          TextSpan(
            text: ' y reconozco el',
            style: TextStyle(fontSize: 19, color: Colors.black),
          ),
          TextSpan(
            text: ' Aviso de privacidad.',
            style: TextStyle(fontSize: 19, color: Color(0xff3dc66b)),
          ),
          TextSpan(
            text: ' Tengo al menos 18 años de edad.',
            style: TextStyle(fontSize: 19, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget registerButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
        child: ElevatedButton(
          onPressed: _controller.goToAddCard,
          child: const Text("Estoy de acuerdo"),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    );
  }
}
