import 'package:flutter/material.dart';
import '/chain_of_responsibility/chain/small_checker.dart';
import '/chain_of_responsibility/chain/big_checker.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CheckPage(),
    );
  }
}

class CheckPage extends StatefulWidget {
  const CheckPage({super.key});

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  final TextEditingController controller = TextEditingController();

  final SmallChecker small = SmallChecker();
  final BigChecker big = BigChecker();
String res="";
  @override
  void initState() {
    super.initState();
    small.next = big;
  }

  void checkNumber() {
    int number = int.tryParse(controller.text) ?? 0;
    setState(() {
      res=small.check(number);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chain Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkNumber,
              child: const Text("Check"),
            ),
            Text("result is : $res"),
          ],
        ),
      ),
    );
  }
}