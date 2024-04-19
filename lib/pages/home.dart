// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ration_seva/components/home_blocks.dart';
import 'package:ration_seva/components/navbar.dart';
import 'package:ration_seva/services/auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthenticateService _auth = AuthenticateService();

  void signOut() {
    _auth.signOut();
    Navigator.pushNamed(context, '/wrapper');
  }

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
              onTap: () {},
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
        ],
        backgroundColor: Color(0xffF4F3F9),
        elevation: 0.0,
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Color(0xffF4F3F9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            ListTile(
              leading: Icon(
                Icons.account_circle_outlined,
              ),
              title: Text(
                'Profile',
              ),
              trailing: GestureDetector(
                onTap: () {
                  signOut();
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.red),
                  height: 25,
                  width: 70,
                  child: Center(
                    child: Text(
                      'Sign Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ListTile(),
          ],
        ),
      ),
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
