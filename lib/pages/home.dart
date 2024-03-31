// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ration_seva/components/home_blocks.dart';
import 'package:ration_seva/components/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: const [
          HomeBlock(
              icon_type: Icons.shopping_cart_outlined,
              block_route: '/orders',
              block_title: 'Shopping'),
          HomeBlock(
            icon_type: Icons.history_outlined,
            block_title: 'Past Orders',
            block_route: '/discover',
          ),
          HomeBlock(
              icon_type: Icons.chat,
              block_route: '/notifications',
              block_title: 'Information'),
          HomeBlock(
              icon_type: Icons.qr_code_2_outlined,
              block_route: '/notifications',
              block_title: 'QR Code')
        ],
      ),
      bottomNavigationBar: NavBar(
        currentPageIndex: 0,
      ),
    );
  }
}
