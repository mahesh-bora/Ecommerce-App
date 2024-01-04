import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/navpages/bookmark.dart';
import 'package:ecommerce_app/screens/navpages/notification.dart';
import 'package:ecommerce_app/screens/navpages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

// For willPopScope
@Deprecated('Use PopScope instead. '
    'This feature was deprecated after v3.12.0-1.0.pre.')
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

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: const Color(0xFF1D182A),
            title: const Text(
              'Exit App',
              style: TextStyle(
                  fontFamily: 'CircularStd-Bold',
                  color: Colors.white,
                  fontSize: 20.0),
            ),
            content: const Text(
              'Do you really want to exit the app?',
              style: TextStyle(
                  fontFamily: 'CircularStd-Bold',
                  color: Colors.white,
                  fontSize: 15.0),
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF8E6CEF),
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF8E6CEF),
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    // void _showBackDialog() {
    //   showDialog<void>(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         backgroundColor: const Color(0xFF1D182A),
    //         title: const Text('Are you sure you want to leave ?',
    //             style: TextStyle(
    //                 fontFamily: 'CircularStd-Bold',
    //                 color: Colors.white,
    //                 fontSize: 20.0)),
    //         actions: <Widget>[
    //           TextButton(
    //             style: TextButton.styleFrom(
    //               backgroundColor: Color(0xFF8E6CEF),
    //               textStyle: Theme.of(context).textTheme.labelLarge,
    //             ),
    //             child: const Text(
    //               'Cancel',
    //               style: TextStyle(
    //                   fontFamily: 'CircularStd-Bold.ttf',
    //                   color: Colors.white,
    //                   fontSize: 15.0),
    //             ),
    //             onPressed: () {
    //               Navigator.pop(context);
    //             },
    //           ),
    //           TextButton(
    //             style: TextButton.styleFrom(
    //               backgroundColor: Color(0xFF8E6CEF),
    //               textStyle: Theme.of(context).textTheme.labelLarge,
    //             ),
    //             child: const Text(
    //               'Leave',
    //               style: TextStyle(
    //                   fontFamily: 'CircularStd-Bold.ttf',
    //                   color: Colors.white,
    //                   fontSize: 15.0),
    //             ),
    //             onPressed: () {
    //               Navigator.pop(context);
    //               Navigator.pop(context);
    //             },
    //           ),
    //         ],
    //       );
    //     },
    //   );
    // }

    return WillPopScope(
      onWillPop: _onWillPop,
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
