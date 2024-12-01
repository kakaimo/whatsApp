import 'package:flutter/material.dart';
import 'package:whatsapp/whats_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text('Login Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
            onPressed: (){
            Navigator.of(context).pushReplacementNamed(WhatsScreen.routeName);
            },
            child:const Icon(Icons.place,
            color: Colors.black,),
      ),
      ),
    );
  }
}
