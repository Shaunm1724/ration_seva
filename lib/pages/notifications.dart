// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ration_seva/components/Notification/choice_button.dart';
import 'package:ration_seva/components/Notification/notification_tile.dart';
import 'package:ration_seva/components/navbar.dart';
import 'package:ration_seva/services/firestore.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final db = FireStoreDataBase();
  

  String choice = 'active';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F3F9),
      bottomNavigationBar: NavBar(
        currentPageIndex: 3,
      ),
      appBar: AppBar(
        title: Text(
          'Notifications',
        ),
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(5),
        children: [
          GestureDetector(
            onTap: () {
              if (choice == 'active') {
                choice = 'past';
              } else {
                choice = 'active';
              }
              print(choice);
              setState(() {});
            },
            child: ActivePastButtn(),
          ),
          SizedBox(height: 5),
          NotificationTile(
            amount: 2000,
            date: '12-2-2024',
            vendor: 'General Store 1',
            orderId: '1',
          ),
          SizedBox(height: 5),
          NotificationTile(
            amount: 2300,
            date: '2-11-2024',
            vendor: 'General Store 2',
            orderId: '2',
          ),
        ],
      ),
    );
  }
}
