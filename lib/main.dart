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
                children: const <Widget>[
                  Text("Image from url", style: TextStyle(fontSize: 25)),
                  Image(
                    image: NetworkImage(
                        "https://cdn141.picsart.com/322275721385201.jpg"),
                    width: 200,
                    height: 200,
                  ),
                  Text("Image from local", style: TextStyle(fontSize: 25)),
                  Image(
                    image: AssetImage("assets/girl.jpg"),
                    width: 200,
                    height: 200,
                  )
                ],
              ))),
    );
  }
}
