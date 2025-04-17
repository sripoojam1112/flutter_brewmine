import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(height: 100, color: Colors.amber, child: const Text('one')),
          Container(
            height: 200,
            color: Colors.deepOrange,
            child: const Text('two'),
          ),
          Container(
            height: 300,
            color: Colors.pink,
            child: const Text('three'),
          ),
        ],
      ),
    );
  }
}
