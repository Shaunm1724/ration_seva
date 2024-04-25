import 'package:flutter/material.dart';
import 'package:ration_seva/services/auth.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticateService _auth = AuthenticateService();

    void signOut() {
      _auth.signOut();
      Navigator.pushNamed(context, '/wrapper');
    }

    return Drawer(
      width: 250,
      backgroundColor: const Color(0xffF4F3F9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          ListTile(
            leading: const Icon(
              Icons.account_circle_outlined,
            ),
            title: const Text(
              'Profile',
            ),
            trailing: GestureDetector(
              onTap: () {
                signOut();
              },
              child: Container(
                decoration: const BoxDecoration(color: Colors.red),
                height: 25,
                width: 70,
                child: const Center(
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
          const ListTile(),
        ],
      ),
    );
  }
}
