import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:first_one/widgets/double_text_widget.dart';
import 'package:first_one/widgets/icon_text_widget.dart';
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

            FittedBox(
              child: Container(
                padding: EdgeInsets.all(3.5),
                child: Row(
                  children: [
                    /*
                *********************
                ***Airline tickets***
                *********************
                */
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      width: size.width * .44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white),
                      child: Center(child: Text("Aireline tickets")),
                    ),

                    /*
                *********************
                ***Hotels***
                *********************
                */
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      width: size.width * .44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.transparent),
                      child: Center(child: Text("Hotels")),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(50)),
                    color: const Color(0xFFF4F6FD)),
              ),
            ),
            
            Gap(AppLayout.getHeight(25)),
            
            /*************************Second part***********************/
            
            const IconText(icon : Icons.flight_takeoff_rounded, text:"Departure"),
            Gap(AppLayout.getHeight(20)),
            const IconText(icon : Icons.flight_land_rounded, text:"Arrival"),


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
        child: Text("find tickets",
          style: Styles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    ),

    /*************************Fourth part***********************/

    Gap(AppLayout.getHeight(40)),
    const AppDoubleTextWidget(bigText: "Upcoming flights",smallText: "view all",)

          ]),
    );
  }
}
