import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';   // calling class

void main() {
  runApp(
    const MaterialApp(    // widget for material design
      home: Scaffold(     // Scaffold - layout for the screen
        body: GradientContainer(),    // calling 'GradientContainer' function
      ),
    ),
  );
}




/* NOTES

add( {a, b} )   // named parameter (opposite of positional)
    would need to call using add( b:5, a:10 )
add( a, [b = 5] )   // named parameter
- named parameter is optional
- can use 'required' keyword

const   // runtime performance optimization

Settings to use on VS CODE
  refactor - easy to add widgets
  >format - format document (use , after each paranthesis)

widget -> class

Class (can be separate file - ex. gradient_container.dart)
- fields (variables)
- methods (functions)
- constructor

'=>'   =    { return 'expression'; }

Variables
- var
- [type]? name;   // unassigned variable
- final       // unchanged variable

const vs final
- const - 
- final - 

*/