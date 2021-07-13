import 'package:awesome/Pages/Login_page.dart';
import 'package:awesome/Pages/home_page.dart';
// import 'package:awesome/Pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        LoginPage.routename: (context) => LoginPage(),
        Myhomepage.routename: (context) => Myhomepage(),
      },
    );
  }
}
