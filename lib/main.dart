import 'package:flutter/material.dart';
import 'package:whatsapp/login_screen.dart';
import 'package:whatsapp/whats_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes:{
        LoginScreen.routeName : (context)  =>  LoginScreen(),
        WhatsScreen.routeName : (context) =>  WhatsScreen()
      },
    );
  }
}

