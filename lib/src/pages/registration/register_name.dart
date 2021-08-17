import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/pages/controllers/register_name_controller.dart';

class RegisterNameYLastName extends StatefulWidget {
  const RegisterNameYLastName({Key? key}) : super(key: key);

  @override
  _RegisterNameYLastNameState createState() => _RegisterNameYLastNameState();
}

class _RegisterNameYLastNameState extends State<RegisterNameYLastName> {

  RegisterNameController _controller = new RegisterNameController();

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          _title(),

          _descripcion(),

          _inputName(),

          _inputLastname(),

          Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 320),
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
    );
  }

  Widget _title(){
    return const Padding(
      padding: EdgeInsets.only(top: 85, left: 20),
      child: const Text(
        'Como te llamas ?',
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
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Text(
        'Dejanos saber como dirigirnos correctamente a ti',
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey[600],
          fontWeight: FontWeight.normal
        )
      ),
    );
  }

  Widget _inputName(){
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      width: 389,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Ingresa tu primer nombre',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.black54
          ),
        ),
      ),
    );
  }

  Widget _inputLastname(){
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      width: 389,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          hintText: 'Ingresa tu primer apellido',
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
      onTap: _controller.goToAcuerdoycondiciones,
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
  
 

//   Widget header_text() {
//     return const Text(
//       "Como te llamas ?",
//       style: TextStyle(
//           fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
//     );
//   }
//
//   Widget description_text() {
//     return const Text(
//       "déjenos saber cómo dirigimos correctamente a usted",
//     );
//   }
//
//   Widget textfield(String hint) {
//     return Container(
//       color: const Color(0xFFDEDEDE),
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: TextFormField(
//         keyboardType: TextInputType.text,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: hint,
//         ),
//       ),
//     );
//   }
//
//   Widget nextButton() {
//     return ElevatedButton(
//       onPressed: () {},
//       style: ElevatedButton.styleFrom(
//           primary: MyColors.primaryColor,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//           padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
//       child: Row(
//         children: [
//           const Text(
//             "Next",
//             style: TextStyle(fontSize: 20),
//           ),
//             const SizedBox(width: 5,),
//           const Icon(FontAwesomeIcons.arrowRight)
//         ],
//       ),
//     );
//   }
//
//   Widget backButton() {
//     return Container(
//       width: 100,
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
//             primary: MyColors.primaryColor,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//             padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
//         child: Row(
//           children: [const Icon(FontAwesomeIcons.arrowLeft)],
//         ),
//       ),
//     );
//   }
}
