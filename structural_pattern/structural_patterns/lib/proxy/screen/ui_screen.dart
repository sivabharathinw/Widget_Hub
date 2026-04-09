import 'package:flutter/material.dart';
import '/proxy/proxy/proxy_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     home:Scaffold(
      appBar: AppBar(title: Text("Proxy Demo")),
      body: Center(
        child: ProxyButton(
          isLoggedIn: true,
          onPressed: () {
            print("Button clicked!");
          },
        ),
      ),
    ));
  }
}