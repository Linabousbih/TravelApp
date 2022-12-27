import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:first_one/widgets/line_widget.dart';
import 'package:first_one/widgets/ticket_part.dart';
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
                color: Colors.grey.shade300,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(20),
                        vertical: AppLayout.getHeight(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          child: Icon(
                            FluentSystemIcons
                                .ic_fluent_lightbulb_filament_filled,
                            color: Styles.primaryColor,
                            size: 27,
                          ),
                          maxRadius: 25,
                          backgroundColor: Colors.white,
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You have a new reward",
                              style: Styles.headlineStyleM.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "You have 95 flights in a year",
                              style: Styles.headlineStyleM.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),

              /************************************************
               ****************Third section*****************
               ************************************************/

              Gap(AppLayout.getHeight(25)),
              Text(
                "Accumulated Miles",
                style: Styles.headlineStyleM,
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                  color: Styles.bgColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 5,
                      spreadRadius: 5,
                    )
                  ]
                ),
                child: Column(children: [
                  Text(
                    "19282",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        color: Styles.textColor),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Miles accrued",
                        style: Styles.headlineStyleXS.copyWith(fontSize: 16),
                      ),
                      Text(
                        "28 Dec 2022",
                        style: Styles.headlineStyleXS.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppTicketPart(
                        text1: "23 046",
                        text2: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppTicketPart(
                        text1: "Airline CO",
                        text2: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  AppLineWidget(
                    sections: 12,
                    isColor: true,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppTicketPart(
                        text1: "24",
                        text2: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppTicketPart(
                        text1: "McDonald's",
                        text2: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  AppLineWidget(
                    sections: 12,
                    isColor: true,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppTicketPart(
                        text1: "52 340",
                        text2: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppTicketPart(
                        text1: "Exuma",
                        text2: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                ]),
              ),
              
              Gap(AppLayout.getHeight(25)),
              InkWell(
                onTap: ()=> print("You tapped"),
                child: Center(child: Text("How to get more miles", style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.w500),))),
            ]));
  }
}
