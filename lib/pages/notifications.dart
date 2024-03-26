// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ration_seva/components/navbar.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        currentPageIndex: 3,
      ),
      appBar: AppBar(
        title: Text(
          'Notifications',
        ),
      ),
    );
  }
}
