import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles{
  static Color primaryColor = primary; 
  static Color textColor = const Color(0xFF3b3b3b); 
  static Color bgColor = const  Color(0xFFeeedf2); 
  static Color orangeColor = const Color(0xFFF37B67); 
  static Color kakiColor = const Color(0xFFd2bdb6);
  static TextStyle textStyle= TextStyle(fontSize:16 , fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headlineStyle= TextStyle(fontSize:26 , fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headlineStyleM= TextStyle(fontSize:21 , fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headlineStyleS= TextStyle(fontSize:17 , fontWeight: FontWeight.w500, color: Colors.grey.shade500);
  static TextStyle headlineStyleXS= TextStyle(fontSize:14 , fontWeight: FontWeight.w500, color: Colors.grey.shade500);
}