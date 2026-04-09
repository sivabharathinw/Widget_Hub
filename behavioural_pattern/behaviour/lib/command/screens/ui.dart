
import "package:flutter/material.dart";
import "/command/receiver/light.dart";
import "/command/command/light_command.dart";
import "/command/invoker/remote.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = "Press button";
  void runCommand() {
    Light light = Light();
    TurnOnCommand command = TurnOnCommand(light);
    Remote remote = Remote();
    remote.setCommand(command);
    remote.pressButton();

    setState(() {
      result = "Light is ON";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Command Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: runCommand,
              child: const Text("Run Command"),
            ),
            const SizedBox(height: 20),
            Text(result),
          ],
        ),
      ),
    );
  }
}