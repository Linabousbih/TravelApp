import 'package:flutter/material.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:gap/gap.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Good Morning", style: Styles.headlineStyleS,),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headlineStyle,)
                      ],
                    ),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/img_1.png"))))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
