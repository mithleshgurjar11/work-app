import 'package:flutter/material.dart';
import 'package:property_buy_seller/share_app_page.dart';

import 'Screen/add_property.dart';
import 'Screen/bottom_navigation_bar.dart';
import 'Screen/contact_us.dart';
import 'Screen/home.dart';
import 'Screen/postproparty1.dart';
import 'Screen/profile.dart';
import 'Screen/splash_screen.dart';
import 'authentication/registration_page.dart';
import 'home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Property Buy Seller',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: bottom_avigationar(),
    );
  }
}
