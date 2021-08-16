import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class RegisterNameYLastName extends StatefulWidget {
  const RegisterNameYLastName({Key? key}) : super(key: key);

  @override
  _RegisterNameYLastNameState createState() => _RegisterNameYLastNameState();
}

class _RegisterNameYLastNameState extends State<RegisterNameYLastName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

         
        ],
      ),
    );
  }

  Widget _title(){
    return const Text(
      'Como te llamas ?'
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
