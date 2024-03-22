// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeBlock extends StatelessWidget {
  final String block_title, block_route;
  final IconData icon_type;
  const HomeBlock(
      {super.key,
      required this.icon_type,
      required this.block_route,
      required this.block_title});

  // Take in the icon: String, title: String, route: String
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, block_route),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Color(0xff25292C)),
                ),
                Icon(
                  icon_type,
                  size: 35,
                  color: Color(0xffB5CF5B),
                ),
              ],
            ),
            Text(
              block_title,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}