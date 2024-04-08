import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ration_seva/components/Login/login_submit_button.dart';
import 'package:ration_seva/components/Login/login_text_field.dart';
import 'package:ration_seva/services/auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthenticateService _auth = AuthenticateService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signin() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print('Successfully Loged in');
      Navigator.pushNamed(context, '/home');
    } else {
      print('Some error occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
            GestureDetector(
              onTap: () => _signin(),
              child: const LoginSubmitButton(),
            ),
            const SizedBox(height: 20),
            const LoginBelowText(
              preText: 'New User',
              route: '/register',
              lORr: 'Register',
            )
          ],
        ),
      ),
    );
  }
}
