import 'package:flutter/material.dart';
import 'package:ration_seva/components/navbar.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        currentPageIndex: 1,
      ),
    );
  }
}
