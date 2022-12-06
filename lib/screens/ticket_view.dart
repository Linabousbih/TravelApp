import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:first_one/widgets/dot.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /////////////////////////////
            // Blue part of the card ////
            /////////////////////////////
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",
                          style: Styles.headlineStyleS
                              .copyWith(color: Colors.white)),
                      const Spacer(),
                      Dot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                color: Colors.white,
                                              )),
                                            )),
                                  );
                                },
                              ),
                            ),
                            Center(
                                child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            )),
                          ],
                        ),
                      ),
                      Dot(),
                      const Spacer(),
                      Text("LDN",
                          style: Styles.headlineStyleS
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 100,
                          child: Text("New-York",
                              style: Styles.headlineStyleXS
                                  .copyWith(color: Colors.white))),
                      Text(
                        "8H 30M",
                        style: Styles.headlineStyleXS
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                          width: 100,
                          child: Text("London",
                              textAlign: TextAlign.end,
                              style: Styles.headlineStyleXS
                                  .copyWith(color: Colors.white))),
                    ],
                  )
                ],
              ),
            ),

            /////////////////////////////
            // Orange part of the card //
            /////////////////////////////

            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      )),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: EdgeInsets.only(left:16,top:10,right:16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 May",
                            style:
                                Styles.headlineStyleS.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text("Date",style: Styles.headlineStyleXS.copyWith(color: Colors.white),)
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(
                            "08:00 AM",
                            style: Styles.headlineStyleS
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text("Departure time",style: Styles.headlineStyleXS.copyWith(color: Colors.white),)
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "23",
                            style:
                                Styles.headlineStyleS.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text("Number",style: Styles.headlineStyleXS.copyWith(color: Colors.white),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
