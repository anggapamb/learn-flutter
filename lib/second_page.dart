import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //finish button
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.pink,
              child: const Text(
                "Finish",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            MaterialButton(
              onPressed: () {
                //snackbar
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Sending Message"),
                ));
              },
              color: Colors.green,
              child: const Text(
                "Show Snackbar",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
