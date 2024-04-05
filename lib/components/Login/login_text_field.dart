import 'package:flutter/material.dart';

class LoginFormText extends StatelessWidget {
  final String placeholder;
  final bool isPassword;
  final TextEditingController textEditingController;
  const LoginFormText({
    super.key,
    required this.placeholder,
    required this.isPassword,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
      ),
      obscureText: isPassword,
      controller: textEditingController,
    );
  }
}
