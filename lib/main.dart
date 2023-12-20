import 'package:ecommerce_app/screens/address_page.dart';
import 'package:ecommerce_app/screens/edit_address_screen.dart';
import 'package:ecommerce_app/screens/edit_card.dart';
import 'package:ecommerce_app/screens/help_page.dart';
import 'package:ecommerce_app/screens/home_page.dart';
import 'package:ecommerce_app/screens/payment_page.dart';
import 'package:ecommerce_app/screens/support_page.dart';
import 'package:ecommerce_app/screens/wishlist_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/address': (context) => AddressScreen(),
        '/wishlist': (context) => WishlistScreen(),
        '/payment': (context) => PaymentScreen(),
        '/help': (context) => HelpScreen(),
        '/support': (context) => SupportScreen(),
        '/edit_address': (context) => EditAddressScreen(),
        '/edit_card': (context) => EditPaymentScreen(),
      },
    );
  }
}
