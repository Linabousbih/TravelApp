import 'package:first_one/screens/ticket_view.dart';
import 'package:first_one/utils/app_info_list.dart';
import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:first_one/widgets/line_widget.dart';
import 'package:first_one/widgets/ticket_part.dart';
import 'package:first_one/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headlineStyle,
            ),
            Gap(AppLayout.getHeight(20)),
            AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                )),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(20)),
              margin: EdgeInsets.only(
                  left: AppLayout.getWidth(15), right: AppLayout.getWidth(16)),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTicketPart(
                        text1: "Flutter DB",
                        text2: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppTicketPart(
                        text1: "64802 6745",
                        text2: "Passeport",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLineWidget(
                    sections: 15,
                    isColor: true,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTicketPart(
                        text1: "129874 47384",
                        text2: "E-ticket Number",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppTicketPart(
                        text1: "B3SG67",
                        text2: "Booking code",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLineWidget(
                    sections: 15,
                    isColor: true,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        children: [
                        Image.asset("assets/images/visa.png",scale: 11,),
                        Text(" *** 2467", style: Styles.headlineStyleS.copyWith(color: Colors.black),)
                      ]
                      ),
                      Gap(5),
                      Text("Payment methos", style: Styles.headlineStyleS,)
                    ],),
                    AppTicketPart(text1: "\$179.99", text2: "Price", alignment: CrossAxisAlignment.end, isColor: false,)
                  ],),
                  const SizedBox(height: 1,)
                ],
              ),
            ),

          /************************************************
           ****************Bar Code section*****************
           ************************************************/




          ]),
    );
  }
}
