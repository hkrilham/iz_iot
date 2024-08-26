import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? lebal;
  final String? hintTex;
  final Icon? prefixIcon;

  const MyTextFormField({
    super.key,
    this.prefixIcon,
    required this.controller,
    required this.lebal,
    required this.hintTex,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: lebal,
        hintText: hintTex,
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
