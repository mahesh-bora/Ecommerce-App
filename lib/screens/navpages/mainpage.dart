import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/navpages/bookmark.dart';
import 'package:ecommerce_app/screens/navpages/notification.dart';
import 'package:ecommerce_app/screens/navpages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const BookmarkScreen(),
    const SettingPage()
  ];
  int cIndex = 0;
  void onTap(int index) {
    setState(() {
      cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF201C2C),
        body: pages[cIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          backgroundColor: const Color(0xFF201C2C),
          currentIndex: cIndex,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF201C2C),
                label: ("Home"),
                icon: Icon(Iconsax.home)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF201C2C),
                label: ("Notification"),
                icon: Icon(Iconsax.notification)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF201C2C),
                label: ("Bookmark"),
                icon: Icon(Iconsax.shopping_cart)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFF201C2C),
                label: ("Profile"),
                icon: Icon(Iconsax.user)),
          ],
        ),
      ),
    );
  }
}
