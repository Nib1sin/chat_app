import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 145, 49, 49);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange
];

class Apptheme {

  final int selectedColor;

  Apptheme({
    this.selectedColor = 0
  }): assert(selectedColor >=0, 'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[2]
    );
  }

}