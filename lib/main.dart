import 'dart:ui';

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
          body: ListView(
            children: const <Widget>[
              Text("Angga"),
              Text(
                "Angga",
                style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
              ),
              Text(
                "Angga",
                style: TextStyle(fontSize: 50, color: Colors.red),
              ),
              Text(
                "Angga",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.blue,
                    decoration: TextDecoration.underline),
              ),
              Text(
                "Angga",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
