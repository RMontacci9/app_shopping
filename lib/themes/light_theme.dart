import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

//Diferente do primaryColor, o primarySwatch recebe uma paleta de cores e não uma cor específica, por isso não podemos usar hexadecimal ou rgb/rgbo. Apenas Colors.blue, por exemplo.

ThemeData lightTheme() {
  return ThemeData(
      brightness: brightness,
      // textTheme: new TextTheme(
      //   bodyLarge: TextStyle(color: Colors.red),
      //   displayLarge:
      // ),

      primaryColor: primaryColor,

      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white, background: backgroundColor),);
}
