import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ramayo_client_app/src/utils/my_colors.dart';

Widget header_text(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
  );
}

Widget description_text(String text) {
  return Text(text);
}

Widget textfield(String hint,TextInputType type) {
  return Container(
    color: const Color(0xFFDEDEDE),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
      ),
    ),
  );
}

Widget nextButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        primary: MyColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
    child: Row(
      children: [
        const Text(
          "Next",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(FontAwesomeIcons.arrowRight)
      ],
    ),
  );
}

Widget backButton() {
  return Container(
    width: 100,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
      child: Row(
        children: [const Icon(FontAwesomeIcons.arrowLeft)],
      ),
    ),
  );
}
