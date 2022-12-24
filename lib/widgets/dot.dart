import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final bool? isColor;
  const Dot({Key ? key , this.isColor}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isColor==null ? Colors.white:Color(0xFF8ACCF7), width:2.5)
      ),
    );
  }
}