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
      body: //SingleChildScrollView(
          /*child:*/ Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _title(),
          _form(),
          const SizedBox(height: 10),
          Expanded(child: _text()),
        ],
      ),
      //)
    );
  }

  Widget _title() {
    return const Padding(
      padding: EdgeInsets.only(top: 85, left: 30, bottom: 30),
      child: Text(
        'Enter your phone number',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _form() {
    return Form(
      key: _formKey,
      child: Row(
        children: <Widget>[
          _inputNumber(),
        ],
      ),
    );
  }

  Widget _inputNumber() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        //width: 260,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: TextFormField(
          controller: _controller.phoneController,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            hintText: 'Phone number',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }

  Widget _text() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
      child: RichText(
        textAlign: TextAlign.justify,
        text: const TextSpan(children: [
          TextSpan(
            text:
                'To continue you will receive an SMS message to the phone number you entered to be able to verify it',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black38,
            ),
          ),
        ]),
      ),
    );
  }
}
