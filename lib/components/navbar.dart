import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int currentPageIndex;
  const NavBar({
    super.key,
    required this.currentPageIndex,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // int currentPI = currentPageIndex;
  List<String> pages = ['/home', '/discover', '/orders', '/notifications'];
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(
          icon: Icon(
            Icons.home_outlined,
            color: Color(0xFFB5CF5B),
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.manage_search_outlined,
            color: Color(0xffB5CF5B),
          ),
          label: 'Discover',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.currency_rupee_outlined,
            color: Color(0xffB5CF5B),
          ),
          label: 'Orders',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.notifications_outlined,
            color: Color(0xffB5CF5B),
          ),
          label: 'Notifications',
        )
      ],
      onDestinationSelected: (int index) {
        // setState(
        //   () {
        //     currentPageIndex = index;
        //   },
        // );
        Navigator.pushNamed(context, pages[index]);
      },
      indicatorColor: const Color(0xffffffff),
      selectedIndex: widget.currentPageIndex,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      backgroundColor: const Color(0xff25292C),
      height: 70.0,
      animationDuration: const Duration(milliseconds: 10),
    );
  }
}
