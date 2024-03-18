import 'package:flutter/material.dart';
import 'package:ration_seva/components/navbar.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        currentPageIndex: 2,
      ),
    );
  }
}
