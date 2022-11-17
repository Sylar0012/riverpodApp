import 'package:flutter/material.dart';
import 'package:workspace/pages/home_page.dart';
import 'package:workspace/pages/login_page.dart';
import 'package:workspace/pages/my_cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/cart": (context) => MyCartPage(),
      },
    );
  }
}
