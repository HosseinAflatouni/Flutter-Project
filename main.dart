import 'dart:io';

import 'package:untitled4/widgets/ItemAppBar.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/pages/Homepage.dart';
import 'package:untitled4/pages/CartPage.dart';
import 'package:untitled4/pages/SignUp.dart';
import 'package:untitled4/pages/Login.dart';


// void main() => runApp(MyApp());

Future<void> main() async {
  Socket client = await Socket.connect("10.0.2.2", 12345);
  client.write('hello there\n');
  client.close();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "SignUp":(context) => SignUp(),
        "Login":(context) => Login(),
        "/": (context) => Homepage(),
        "CartPage": (context) => CartPage(),
        "ItemPage": (context) => ItemAppBar(),
      },
    );
  }
}

