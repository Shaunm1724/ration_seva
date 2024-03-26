import 'package:flutter/material.dart';
import 'package:ration_seva/components/navbar.dart';

class item_desc extends StatelessWidget {
  const item_desc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        currentPageIndex: 2,
      ),
    );
  }
}
