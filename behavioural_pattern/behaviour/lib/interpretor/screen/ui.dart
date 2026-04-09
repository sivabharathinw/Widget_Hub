import 'package:flutter/material.dart';
import "/interpretor/rule/addition.dart";
import "/interpretor/value/number.dart";
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:AdditionPage(),
    );
  }
}
class AdditionPage extends StatefulWidget {
  const AdditionPage({super.key});

  @override
  State<AdditionPage> createState() => _AdditionPageState();
}

class _AdditionPageState extends State<AdditionPage> {

  int res = 0;

  void addition() {
    setState(() {
      res = Addition(Number(2), Number(3)).getValue();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("addition of two numbers"),
            ElevatedButton(onPressed: addition, child: Text("add")),
            Text("result is : $res"),

          ],

        ),

      ),

    );
  }
}

