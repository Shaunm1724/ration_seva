// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ration_seva/components/Common/Appbar.dart';
import 'package:ration_seva/components/Common/drawer.dart';
import 'package:ration_seva/components/home_blocks.dart';
import 'package:ration_seva/components/Common/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      appBar: AppBar(
        title: Text('Ration Seva'),
        actions: [
          Center(
            widthFactor: 3,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/payments');
              },
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          ),
        ],
        backgroundColor: const Color(0xffF4F3F9),
        elevation: 0.0,
      ),
      drawer: DrawerWidget(),
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
            block_route: '/notifications',
          ),
          HomeBlock(
              icon_type: Icons.chat,
              block_route: '/discover',
              block_title: 'Shops'),
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
