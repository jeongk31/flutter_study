import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;   // can't use 'const' because it's a variable
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget { // making a new class

  const GradientContainer({super.key}); // constructor

  @override
  Widget build(context) {     // method
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
    );
  }
}