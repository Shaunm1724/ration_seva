import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ration_seva/components/Login/login_submit_button.dart';
import 'package:ration_seva/components/Login/login_text_field.dart';
import 'package:ration_seva/services/auth.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthenticateService _auth = AuthenticateService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpass = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    _confpass.dispose();
    super.dispose();
  }

  void _signup() async {
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confpass.text;

    if (confirmPassword == password) {
      User? user = await _auth.signUpWithEmailAndPassword(email, password);

      if (user != null) {
        print('User is succesfully created!');
        Navigator.pushNamed(context, '/home');
      } else {
        print('Some error occured!');
      }
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: const Color(0xFFB5CF5B),
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginFormText(
              placeholder: 'Enter Email',
              isPassword: false,
              textEditingController: _emailController,
            ),
            const SizedBox(height: 20),
            LoginFormText(
              placeholder: 'Enter Password',
              isPassword: true,
              textEditingController: _passwordController,
            ),
            const SizedBox(height: 20),
            LoginFormText(
              placeholder: 'Confirm Password',
              isPassword: true,
              textEditingController: _confpass,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _signup(),
              child: const LoginSubmitButton(),
            ),
            const SizedBox(height: 20),
            const LoginBelowText(
              preText: 'Already a User?',
              route: '/login',
              lORr: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
