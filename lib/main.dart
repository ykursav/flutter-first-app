import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 120, 219, 244),
          Color.fromARGB(255, 25, 18, 209),
        ]),
      ),
    ),
  );
}
