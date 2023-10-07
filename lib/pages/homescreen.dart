import 'package:bottom_navigation_bar/pages/account.dart';
import 'package:bottom_navigation_bar/pages/homepage.dart';
import 'package:bottom_navigation_bar/pages/notificationpage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPages(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notification",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Account",
        )
      ],
      currentIndex: selectPage,
      onTap: (tappedPage) {
        setState(() {
          selectPage = tappedPage;
        });
      },
    );
  }

  _getPages() {
    switch (selectPage) {
      case 0:
        return const HomePage();
      case 1:
        return const NotificationPage();
      case 2:
        return const AccountPage();
    }
  }
}
