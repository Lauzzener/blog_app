import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;

  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "O campo de $hintText está vazio!";
        }
        return null;
      },
    );
  }
}
