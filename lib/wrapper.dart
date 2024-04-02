import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ration_seva/pages/home.dart';
import 'package:ration_seva/pages/login/register.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final User? user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      return const Register();
    } else {
      return const Home();
    }
  }
}