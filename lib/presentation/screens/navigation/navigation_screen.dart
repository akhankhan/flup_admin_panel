import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../../widget/custom_switch.dart';
import 'navigation_provider.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child:
            Consumer<NavigationProvider>(builder: (context, valueModel, child) {
          return Scaffold(
              body: Row(
            children: [
              Expanded(
                  flex: valueModel.isCollapsed == true ? 2 : 1,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          // left: width * 0.010, // 10
                          right: width * 0.020, // 20
                          // top: width * 0.010,
                          //bottom: width * 0.010
                        ),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left:
                                    valueModel.isCollapsed ? width * 0.010 : 0),
                            child: Column(
                              crossAxisAlignment: valueModel.isCollapsed
                                  ? CrossAxisAlignment.start
                                  : CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.090,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.010),
                                  child: Text(
                                    valueModel.isCollapsed ? 'MARKETING' : 'M',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.010,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.0090,
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    valueModel.toggleScreen(0);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 0
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            valueModel.isCollapsed
                                                ? MainAxisAlignment.start
                                                : MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: width * 0.008),
                                            child: Icon(
                                              Icons.dashboard,
                                              size: width * 0.015,
                                              color: valueModel.screenIndex == 0
                                                  ? Colors.green
                                                  : Colors.grey,
                                            ),
                                          ),
                                          valueModel.isCollapsed
                                              ? Padding(
                                                  padding: EdgeInsets.only(
                                                      left: width * 0.010),
                                                  child: Text('Dashboard',
                                                      style: TextStyle(
                                                        fontSize: width * 0.010,
                                                        color: valueModel
                                                                    .screenIndex ==
                                                                0
                                                            ? Colors.black
                                                            : Colors.grey,
                                                      )),
                                                )
                                              : Container(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    log("cccccc");
                                    valueModel.toggleScreen(1);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 1
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            Icons.shopping_cart,
                                            size: width * 0.015,
                                            color: valueModel.screenIndex == 1
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.010),
                                                child: Text('Marketplace',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              1
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    valueModel.toggleScreen(2);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 2
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            Icons.shopping_basket,
                                            size: width * 0.015,
                                            color: valueModel.screenIndex == 2
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.010),
                                                child: Text('Orders',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              2
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    valueModel.toggleScreen(3);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 3
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            Icons.map,
                                            size: width * 0.015,
                                            color: valueModel.screenIndex == 3
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.010),
                                                child: Text('Tracking',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              3
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    valueModel.toggleScreen(4);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 4
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            FontAwesomeIcons.userGroup,
                                            size: width * 0.012,
                                            color: valueModel.screenIndex == 4
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.010),
                                                child: Text('Customer',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              4
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    valueModel.toggleScreen(5);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 5
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            Icons.discount,
                                            size: width * 0.015,
                                            color: valueModel.screenIndex == 5
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.010),
                                                child: Text('Discounts',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              5
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.0090,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.010),
                                  child: Text(
                                    valueModel.isCollapsed ? 'PAYMENTS' : 'P',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.010,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.0090,
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    valueModel.toggleScreen(6);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 6
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            MdiIcons.calculatorVariant,
                                            size: width * 0.015,
                                            color: valueModel.screenIndex == 6
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.010),
                                                child: Text('Ledger',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              6
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    valueModel.toggleScreen(7);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.015,
                                    ),
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: valueModel.screenIndex == 7
                                          ? const Color(0XffE1F0ED)
                                          : Colors.transparent,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            Boxicons.bxs_dollar_circle,
                                            size: width * 0.015,
                                            color: valueModel.screenIndex == 7
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.010),
                                                child: Text('Taxes',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              7
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.0090,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: valueModel.isCollapsed
                                          ? 0
                                          : width * 0.010),
                                  child: Text(
                                    valueModel.isCollapsed ? 'SYSTEM' : 'S',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w400,
                                      fontSize: width * 0.010,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: valueModel.isCollapsed
                                        ? 0
                                        : width * 0.015,
                                  ),
                                  padding: EdgeInsets.only(left: width * 0.010),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: valueModel.screenIndex == 8
                                        ? const Color(0XffE1F0ED)
                                        : Colors.transparent,
                                  ),
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      valueModel.toggleScreen(8);
                                    },
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: width * 0.008),
                                          child: Icon(
                                            Icons.settings,
                                            size: width * 0.015,
                                            color: valueModel.screenIndex == 8
                                                ? Colors.green
                                                : Colors.grey,
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: valueModel.isCollapsed
                                                        ? width * 0.010
                                                        : 0),
                                                child: Text('Settings',
                                                    style: TextStyle(
                                                      fontSize: width * 0.010,
                                                      color: valueModel
                                                                  .screenIndex ==
                                                              8
                                                          ? Colors.black
                                                          : Colors.grey,
                                                    )),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: width * 0.010),
                                  child: Row(
                                    mainAxisAlignment: valueModel.isCollapsed
                                        ? MainAxisAlignment.spaceBetween
                                        : MainAxisAlignment.center,
                                    children: [
                                      valueModel.isCollapsed
                                          ? Row(
                                              children: [
                                                Icon(
                                                  Icons.dark_mode,
                                                  size: width * 0.015,
                                                  color: Colors.grey,
                                                ),
                                                valueModel.isCollapsed
                                                    ? Padding(
                                                        padding: EdgeInsets.only(
                                                            left: valueModel
                                                                    .isCollapsed
                                                                ? width * 0.010
                                                                : 0),
                                                        child: Text('Dark Mode',
                                                            style: TextStyle(
                                                              fontSize:
                                                                  width * 0.010,
                                                              color: valueModel
                                                                          .screenIndex ==
                                                                      8
                                                                  ? Colors.black
                                                                  : Colors.grey,
                                                            )),
                                                      )
                                                    : Container(),
                                              ],
                                            )
                                          : Container(),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: valueModel.isCollapsed
                                                ? width * 0.010
                                                : 0),
                                        child: CustomSwitch(
                                          value: valueModel.isSwitchOn,
                                          onChanged: (value) {
                                            valueModel.toggleSwitch(value);
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: width * 0.012), //15
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: width * 0.028,
                                          height: width * 0.028,
                                          child: const CircleAvatar(
                                            backgroundImage: NetworkImage(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCp_ByMCZW8m0s3KmAbIENDvR2Zc_HkBJyYw&usqp=CAU'),
                                          ),
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.008),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Akhan',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: width * 0.010,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Admin Manger',
                                                      style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: width * 0.010,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: width * 0.020),
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(left: width * 0.010),
                                    child: Row(
                                      mainAxisAlignment: valueModel.isCollapsed
                                          ? MainAxisAlignment.start
                                          : MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Entypo.logout,
                                          size: width * 0.015,
                                          color: Colors.green,
                                        ),
                                        valueModel.isCollapsed
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.008),
                                                child: Text(
                                                  'Log out',
                                                  style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: width * 0.010,
                                                  ),
                                                ),
                                              )
                                            : Container()
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: width * 0.020,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            valueModel.toggleIsCollapsed();
                          },
                          child: Container(
                            width: width * 0.025,
                            height: width * 0.020,
                            color: Colors.white.withOpacity(0.6),
                            child: Icon(
                              size: width * 0.012,
                              valueModel.isCollapsed == true
                                  ? Icons.arrow_back_ios
                                  : Icons.arrow_forward_ios,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 10,
                child: valueModel.screenWidget[valueModel.screenIndex],
              ),
            ],
          ));
        }));
  }
}
