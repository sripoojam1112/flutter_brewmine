import 'package:coffee_card/coffee_prefs.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';

// use stl to get prebuild general code for a class.
// stateless widget = widget wont contain any state that changes over time or in reaction to user event.

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BrewMine',
          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.brown[500],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: EdgeInsets.all(20),
            child: const StyledBodyText('Customize Your Coffee'),
          ),
          Container(
            color: Colors.brown[100],
            padding: EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset(
              'assets/img/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
