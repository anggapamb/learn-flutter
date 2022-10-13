import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("My First App")),
            elevation: 0.0,
            backgroundColor: Colors.green,
            leading: const Icon(Icons.home),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.account_balance_wallet_rounded),
                onPressed: () {},
              ),
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(child: Text("Menu 1")),
                  const PopupMenuItem(child: Text("Menu 2")),
                  const PopupMenuItem(child: Text("Menu 3"))
                ];
              })
            ],
          ),
          body: Container(
              margin: const EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                  const Text("Material Button"),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: const Text(
                      "Button Biasa",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text("Button Rounded",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Text("Floating Button"),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.home),
                  ),
                  const Text("Icon Button"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.save),
                    iconSize: 50,
                    color: Colors.orange,
                  )
                ],
              ))),
    );
  }
}
