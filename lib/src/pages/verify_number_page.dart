import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ramayo_client_app/src/pages/controllers/CheckNumberController.dart';

class VerifyNumber extends StatefulWidget {
  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  CheckNumberController _controller = new CheckNumberController();

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _title(),

          _text(),

          _inputNumber(),

          //const SizedBox(height: 10),

          Expanded(child: _resendCode()),
        ],
      ),
      //),
    );
  }

  Widget _title() {
    return const Padding(
      padding: EdgeInsets.only(top: 85, left: 30, bottom: 30),
      child: Text('Verify your cell phone number',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    );
  }

  Widget _text() {
    return const Padding(
      padding: EdgeInsets.only(left: 30, bottom: 20, right: 30),
      child: Text(
        'Enter the 4 digits that were sent to the number you entered',
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }

  Widget _inputNumber() {
    return Form(
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        width: 389,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: TextFormField(
          controller: _controller.verificaNumberController,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            hintText: 'Enter the 4 digit code',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: Colors.black54),
          ),
        ),
      ),
    );
  }

  Widget _resendCode() {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 5),
        child: /* TextButton(
         onPressed: () {}, 
         child:*/
            GestureDetector(
          onTap: () {
            print('the Pepe');
          },
          child: Text("Resend SMS code",
              style: TextStyle(fontSize: 15, color: Colors.greenAccent[400])),
        )
        //),
        );
  }

  Widget bottonNext() {
    return GestureDetector(
      onTap: _controller.goToRegisterEmail,
      child: Container(
          width: 100,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const SizedBox(width: 10),
              const Text('Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(60))),
    );
  }

  Widget bottonBack() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 100,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Icon(Icons.arrow_back, color: Colors.white),
            const Text('Back',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(width: 10),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(60)),
      ),
    );
  }
}
