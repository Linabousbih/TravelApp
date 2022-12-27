import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppTicketPart extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final String text1;
  final String text2;
  const AppTicketPart({Key ? key, required this.text1, required this.text2, required this.alignment, this.isColor} ): super (key:key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
      Text(
        text1,
        style: isColor==null? Styles.headlineStyleS.copyWith(color: Colors.white):Styles.headlineStyleS.copyWith(color: Colors.black),
      ),
      Gap(AppLayout.getHeight(5)),
      Text(text2,
          style: isColor==null? Styles.headlineStyleS.copyWith(color: Colors.white):Styles.headlineStyleS),
    ]);
  }
}
