import 'package:first_app_flutter/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstPage"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          //move activity
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SecondPage();
          }));
        },
        color: Colors.purple,
        child: const Text(
          "Move",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      )),
    );
  }
}
