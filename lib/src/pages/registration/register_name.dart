import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ramayo_client_app/src/pages/registration/constants.dart';


class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  _RegisterPage2State createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: column(context),
      ),
    );
  }

  Widget column(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        header_text("Como te llamas ?",),
        const SizedBox(height: 15),
        description_text("déjenos saber cómo dirigimos correctamente a usted"),
        const SizedBox(height: 15),
        textfield("Ingresa tu primer nombre",TextInputType.text),
        const SizedBox(height: 15),
        textfield("Ingresa tu primer apellido",TextInputType.text),
        const SizedBox(height: 100),
        row()
      ],
    );
  }

  Widget row() {
    return Row(
      children: [
        backButton(),
        const SizedBox(
          width: 120,
        ),
        nextButton()
      ],
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
