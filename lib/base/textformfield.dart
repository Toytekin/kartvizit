import 'package:flutter/material.dart';

class sbtTextformfield {
  static Padding textformfield(
      TextEditingController controller, String hintext) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        key: Key(hintext),
        controller: controller,
        decoration: InputDecoration(
          hintText: hintext,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
