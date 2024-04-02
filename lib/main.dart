import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ration_seva/pages/discover.dart';
import 'package:ration_seva/pages/home.dart';
import 'package:ration_seva/pages/item_description.dart';
import 'package:ration_seva/pages/notifications.dart';
import 'package:ration_seva/pages/orders.dart';
import 'package:ration_seva/pages/payment.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/discover': (context) => const Discover(),
        '/orders': (context) => const Orders(),
        '/notifications': (context) => const Notifications(),
        '/item_description': (context) => const item_desc(),
        '/payments': (context) => const Payment()
      },
    );
  }
}
