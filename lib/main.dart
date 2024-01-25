import 'package:flutter/material.dart';
import 'package:shop_coffee/pages/Pin_Login.dart';
import 'package:shop_coffee/pages/cart.dart';
import 'package:shop_coffee/pages/cart.dart';//
import 'package:shop_coffee/pages/test_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      theme: ThemeData(
        
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Pin_Login(),
    );
  }
}

