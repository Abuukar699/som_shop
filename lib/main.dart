import 'package:flutter/material.dart';
import 'package:som_shop/screens/home_screen.dart';

void main() {
  runApp(const SomShopApp());
}

class SomShopApp extends StatelessWidget {
  const SomShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SomShop",

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),

      home: const HomeScreen(),
    );
  }
}