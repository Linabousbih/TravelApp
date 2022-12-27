import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),

              /************************************************
               ****************First section*****************
               ************************************************/
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: AppLayout.getHeight(86),
                      width: AppLayout.getHeight(86),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/img_1.png")),
                      )),
                  Gap(AppLayout.getWidth(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Book tickets",
                        style: Styles.headlineStyle,
                      ),
                      Gap(AppLayout.getHeight(2)),
                      Text("New-York",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      Gap(AppLayout.getHeight(8)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(3),
                            vertical: AppLayout.getHeight(3)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(100)),
                            color: const Color(0xFFFEF4F3)),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(3)),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF526799)),
                              child: const Icon(
                                FluentSystemIcons.ic_fluent_shield_filled,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            const Text(
                              "Premium Status",
                              style: TextStyle(color: Color(0xFF526799)),
                            ),
                            Gap(AppLayout.getHeight(5)),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            print("Tapped");
                          },
                          child: Text(
                            "Edit",
                            style: Styles.textStyle.copyWith(
                                color: Styles.primaryColor,
                                fontWeight: FontWeight.w300),
                          ))
                    ],
                  )
                ],
              ),

              /************************************************
               ****************Second section*****************
               ************************************************/

              Gap(AppLayout.getHeight(8)),
              Divider(
                color: Colors.grey.shade500,
              ),
              Gap(AppLayout.getHeight(8)),
              Stack(
                children: [
                  Container(
                    height: AppLayout.getHeight(90),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                  ),
                  Container(
                    child: Positioned(
                      right: -45,
                      top: -40,
                      child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 18, color: Color(0xFF264CD2)),
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      CircleAvatar(
                        child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,color: Styles.primaryColor,size: 27,),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("You have a new reward", style: Styles.headlineStyleM.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("You have 95 flights in a year", style: Styles.headlineStyleM.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9),fontSize: 16),),

                      ],)
                    ],),
                  )
                ],
              )
            ]));
  }
}
