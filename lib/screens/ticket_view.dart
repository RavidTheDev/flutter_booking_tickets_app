import 'package:booking_ticket_app/widgets/column_layout.dart';
import 'package:booking_ticket_app/widgets/layout_builder_widget.dart';

import '/utils/app_layout.dart';
import '/utils/app_styles.dart';
import '/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("ticket to ${ticket['to']['name']}");
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.90,
        height: AppLayout.getHeight(162),
        child: Container(
          margin: EdgeInsets.only(
            right: AppLayout.getHeight(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /*Blue part of the ticket*/
              Container(
                decoration: BoxDecoration(
                  color: isColor == null ? Color(0xff526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                    topRight: Radius.circular(
                      AppLayout.getHeight(21),
                    ),
                  ),
                ),
                padding: EdgeInsets.all(
                  AppLayout.getHeight(15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                        const Spacer(),
                        ThickContainer(
                          isColor: true,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                        ((constraints.constrainWidth() / 6)
                                            .floor()),
                                        (index) => SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: isColor == null
                                                    ? Colors.white
                                                    : Colors.grey.shade300),
                                          ),
                                        ),
                                      ),
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
                                        : Color(0xff8accf7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ThickContainer(
                          isColor: true,
                        ),
                        const Spacer(),
                        Text(
                          ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    const Gap(1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(155),
                          child: Text(
                            ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                        Text(
                          ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3,
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(155),
                          child: Text(
                            ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /*Red part of the ticket */
              Container(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      )),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(
                          AppLayout.getHeight(6),
                        ),
                        child: ApplayoutWidget(sections: 6),
                      ),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              AppLayout.getHeight(10),
                            ),
                            bottomLeft: Radius.circular(
                              AppLayout.getHeight(10),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              /*Bottom red part of the ticket */
              Container(
                decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        AppLayout.getHeight(isColor == null ? 21 : 0),
                      ),
                      bottomRight: Radius.circular(
                        AppLayout.getHeight(isColor == null ? 21 : 0),
                      )),
                ),
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(15),
                  top: AppLayout.getHeight(10),
                  right: AppLayout.getHeight(15),
                  bottom: AppLayout.getHeight(15),
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secondText: "Departure Time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}