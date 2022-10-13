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
          body: Container(
            margin: const EdgeInsets.all(15),
            child: ListView(
              children: const <Widget>[
                TextField(),
                SizedBox(height: 20),
                TextField(
                  maxLength: 20,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      prefix: Text("yourName: "),
                      prefixStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                      )),
                ),
                SizedBox(height: 20),
                TextField(
                  maxLength: 20,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  maxLength: 20,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Your password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock)),
                ),
                SizedBox(height: 20),
                TextField(
                  maxLength: 20,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixText: "Rp.",
                      prefixStyle: TextStyle(color: Colors.red, fontSize: 18),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.attach_money)),
                ),
              ],
            ),
          )),
    );
  }
}
