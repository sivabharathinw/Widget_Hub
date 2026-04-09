import "package:flutter/material.dart";
import "/flyweight/factory/icon_factory.dart";

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlyweightPatternUI(),
    );
  }
}
class FlyweightPatternUI extends StatelessWidget {
  const FlyweightPatternUI({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Flyweight Pattern Demo")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to feedback page"),
            Text("rate the restaraunt"),
            IconFactory.getIcon(iconName: "fav").render(),

            IconFactory.getIcon(iconName: "fav").render(),
            IconFactory.getIcon(iconName: "star").render(),

          ],
        ),
      ),
    );
  }
}
