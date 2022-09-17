import 'package:booking_ticket_app/utils/app_layout.dart';
import 'package:booking_ticket_app/utils/app_styles.dart';
import 'package:booking_ticket_app/widgets/column_layout.dart';
import 'package:booking_ticket_app/widgets/layout_builder_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Gap(AppLayout.getHeight(30)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getWidth(86),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/img_1.png"),
                    ),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Styles.headLineStyle,
                    ),
                    Gap(AppLayout.getHeight(5)),
                    Text(
                      "New-York",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(100),
                        ),
                        color: Color.fromARGB(255, 192, 190, 190),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xff536799),
                            ),
                            child: Icon(
                              FluentIcons.shield_20_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Premium Status ",
                            style: TextStyle(
                                color: Color(0xff536799),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(10)),
            Divider(
              color: Colors.grey.shade400,
            ),
            Gap(AppLayout.getHeight(10)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(18),
                    ),
                  ),
                ),
                Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: EdgeInsets.all(
                      AppLayout.getHeight(30),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 19,
                        color: Color(0xff264cd2),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getHeight(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          FluentIcons.lightbulb_filament_20_filled,
                          color: Styles.primaryColor,
                          size: 30,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(15)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You\'ve got new award.",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          Text(
                            "You have 50 flights in a year",
                            style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(30)),
            Text(
              "Accumulated Miles",
              style: Styles.headLineStyle2.copyWith(fontSize: 30),
            ),
            Gap(AppLayout.getHeight(50)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18),
                  ),
                  color: Styles.bgColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 10,
                      spreadRadius: 10,
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    "192802",
                    style: TextStyle(
                        fontSize: 55,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w700),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Miles Accured",
                        style: Styles.headLineStyle4.copyWith(fontSize: 20),
                      ),
                      Text(
                        "11 June 2022",
                        style: Styles.headLineStyle4.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "23 042",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "Airline CO",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  ApplayoutWidget(
                    sections: 12,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "24",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "MacDonalds",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  ApplayoutWidget(
                    sections: 12,
                    isColor: false,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "52 340",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "RavidLahamani",
                        secondText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(50)),
            InkWell(
              onTap: () {
                print("tapped");
              },
              child: Center(
                child: Text(
                  "How to get more miles",
                  style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
