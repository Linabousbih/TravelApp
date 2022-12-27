import 'package:first_one/utils/app_layout.dart';
import 'package:first_one/utils/app_styles.dart';
import 'package:first_one/widgets/dot.dart';
import 'package:first_one/widgets/line_widget.dart';
import 'package:first_one/widgets/ticket_part.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true ? 167: 172),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /////////////////////////////
            // Blue part of the card ////
            /////////////////////////////
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                          ticket['from'][
                              'code'], //To access a map inside a map we do variableName[][]
                          style: isColor == null
                              ? Styles.headlineStyleS
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyleS.copyWith(color: Colors.black)),
                      const Spacer(),
                      Dot(isColor: true),
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
                                                color: isColor == null
                                                    ? Colors.white
                                                    : Colors.grey.shade300,
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
                                color: isColor == null
                                    ? Colors.white
                                    : Color(0xFF8ACCF7),
                              ),
                            )),
                          ],
                        ),
                      ),
                      Dot(
                        isColor: true,
                      ),
                      const Spacer(),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headlineStyleS
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyleS.copyWith(color: Colors.black)),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['from']['name'],
                              style: isColor == null
                                  ? Styles.headlineStyleXS
                                      .copyWith(color: Colors.white)
                                  : Styles.headlineStyleXS)),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headlineStyleXS
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyleXS.copyWith(color: Colors.black),
                      ),
                      SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticket['to']['name'],
                              textAlign: TextAlign.end,
                              style: isColor == null
                                  ? Styles.headlineStyleXS
                                      .copyWith(color: Colors.white)
                                  : Styles.headlineStyleXS)),
                    ],
                  )
                ],
              ),
            ),

            /////////////////////////////
            // Orange part of the card //
            /////////////////////////////

            Container(
              color:isColor==null ? Styles.orangeColor: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomRight:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AppLineWidget(sections: 15,isColor: false,)
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(AppLayout.getHeight(10)),
                                bottomLeft:
                                    Radius.circular(AppLayout.getHeight(10))))),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isColor==null? Styles.orangeColor:Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(isColor==null?21:0)),
                      bottomRight: Radius.circular(AppLayout.getHeight(isColor==null?21:0)))),
              padding:
                  EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTicketPart(text1: ticket['date'], text2: "Date", alignment: CrossAxisAlignment.start,isColor: false,),
                      AppTicketPart(text1: ticket['departure_time'], text2: "Departure time", alignment: CrossAxisAlignment.center,isColor: false,),
                      AppTicketPart(text1: ticket['number'].toString(), text2: "Number", alignment: CrossAxisAlignment.end,isColor: false,),                     
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
