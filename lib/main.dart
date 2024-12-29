import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Ceci est un exemple simple d'application Flutter que nous allons utiliser pour démontrer le processus de déploiement d'une application Flutter.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 20), // Space between the text and the button
              const ButtonWithAlert(),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWithAlert extends StatelessWidget {
  const ButtonWithAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Show alert dialog when button is clicked
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Bonsoir"),
              content: const Text("Bonsoir 2IAD !"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: const Text("OK"),
                ),
              ],
            );
          },
        );
      },
      child: const Text("Cliquez-moi"),
    );
  }
}
