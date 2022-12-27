import 'package:first_one/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppLineWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const AppLineWidget({Key ? key, this.isColor, required this.sections}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                (constraints.constrainWidth() / sections).floor(),
                                (index) => SizedBox(
                                      width: AppLayout.getWidth(5),
                                      height: AppLayout.getHeight(1),
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                        color:isColor==null ? Colors.white:Colors.grey.shade300,
                                      )),
                                    )),
                          );
                        },
                      );
  }
}