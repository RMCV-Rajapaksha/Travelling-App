import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color.fromRGBO(202, 86, 209, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 79, 48, 95), width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(202, 86, 209, 1), width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(202, 86, 209, 1), width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(202, 86, 209, 1), width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        fillColor: const Color.fromRGBO(255, 255, 255, 0.3),
        filled: true,
      ),
    );
  }
}
