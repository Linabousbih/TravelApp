import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:first_one/widgets/double_text_widget.dart';
import 'package:first_one/widgets/icon_text_widget.dart';
import 'package:first_one/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "What are \n you looking for?",
              style: Styles.headlineStyle.copyWith(fontSize: 35),
            ),
            Gap(AppLayout.getHeight(20)),

            /*************************First part***********************/

            const AppTicketsTabs(firstTab: "Airline tickets", secondTab: "Hotels"),
            Gap(AppLayout.getHeight(25)),

            /*************************Second part***********************/

            const IconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(20)),
            const IconText(icon: Icons.flight_land_rounded, text: "Arrival"),

            /*************************Third part***********************/
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(15),
                  horizontal: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  color: Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
              child: Center(
                child: Text(
                  "find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),

            /*************************Fourth part***********************/
            Gap(AppLayout.getHeight(40)),
            const AppDoubleTextWidget(
              bigText: "Upcoming flights",
              smallText: "view all",
            ),

            /*************************Last part***********************/
            Gap(AppLayout.getHeight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(425),
                  width: AppLayout.getScreenWidth() * 0.42,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/sit.jpg"))),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text(
                          "20% discount on early booking of this flight. Don't miss out.",
                          style: Styles.headlineStyleM)
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(200),
                          decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getWidth(15),
                              vertical: AppLayout.getHeight(15)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount\nfor survey",
                                  style: Styles.headlineStyleM.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Gap(AppLayout.getHeight(10)),
                                Text(
                                  "Take the survey about our services and get the discount",
                                  style: Styles.headlineStyleM.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ]),
                        ),
                        
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(30)),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xFF189999)),
                              )),
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      width: size.width*0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545)
                        ),
                        child: Column(
                          children: [
                            Text("Take love", style: Styles.headlineStyleM.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                            Gap(AppLayout.getHeight(5)),
                            RichText(text: const TextSpan(children:[
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50)
                              ),TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38)
                              ),
                            ] ))
                          ],
                        ),
                      ),
                  ],
                )
              ],
            )
          ]),
    );
  }
}
