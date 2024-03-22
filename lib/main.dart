import 'package:flutter/material.dart';
import 'package:ration_seva/pages/discover.dart';
import 'package:ration_seva/pages/home.dart';
import 'package:ration_seva/pages/notifications.dart';
import 'package:ration_seva/pages/orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ration Seva',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/discover':(context) => const Discover(),
        '/orders':(context) => const Orders(),
        '/notifications': (context) => const Notifications()
      },
    );
  }
}