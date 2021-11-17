import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: RandomColors()));
}

class RandomColors extends StatefulWidget {
  const RandomColors({Key? key}) : super(key: key);

  @override
  _RandomColorsState createState() => _RandomColorsState();
}

class _RandomColorsState extends State<RandomColors> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeColor,
        child: Container(
          child: const Center(
            child: Text(
              'Hey There',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Pacifico',
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0),
            ),
          ),
          color: _color,
        ),
      ),
    );
  }
}
