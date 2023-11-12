import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:task/presentation/screens/customer/custom_provider.dart';

import '../../widget/total_customer.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final List<String> title = [
      'Total customers',
      'Total revenue',
      'Total orders',
      'Total returns'
    ];
    final List<String> total = ['576,888', '\$3,455 M', '1,345 M', '1,789'];
    final List<String> percentage = ['2.5%', '0.5%', '0.2%', '0.12%'];
    final List icons = [
      FontAwesomeIcons.userGroup,
      Boxicons.bxs_dollar_circle,
      Icons.shopping_basket,
      FontAwesomeIcons.shop,
    ];
    final List<bool> decureaseOrder = [false, false, true, false];
    return Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: Padding(
          padding: EdgeInsets.only(left: width * 0.010),
          child: ChangeNotifierProvider(
            create: (context) => CustomerProvider(),
            child: Consumer<CustomerProvider>(
                builder: (context, valueModel, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: height * 0.02,
                    ),
                    child: Text(
                      'Customers',
                      style: TextStyle(
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    height: height * 0.114,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: total.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: width * 0.010),
                          child: TotalCustomer(
                            title: title[index],
                            icon: icons[index],
                            percentage: percentage[index],
                            total: total[index],
                            decreaseOrder: decureaseOrder[index],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width * 0.18,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.2,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: width * 0.015,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(fontSize: width * 0.009),
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                          fontSize: width *
                                              0.01), // Adjust the font size as needed
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.015, right: width * 0.015),
                            child: SizedBox(
                              width: width * 0.20,
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () => valueModel.selectDate(context),
                                    child: Container(
                                      width: width * 0.18,
                                      height: height * 0.059,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 0.3),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 0.010),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            valueModel.date == null
                                                ? Text(
                                                    'Select Date',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize:
                                                            width * 0.010),
                                                  )
                                                : Text(
                                                    '${valueModel.date!.toLocal()}'
                                                        .split(' ')[0],
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize:
                                                            width * 0.010),
                                                  ),
                                            Icon(
                                              Icons.calendar_today_outlined,
                                              color: Colors.grey[500],
                                              size: width * 0.011,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.010),
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.09,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.2,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.005),
                                    child: Icon(
                                      Icons.filter_list,
                                      size: width * 0.013,
                                    ),
                                  ),
                                  Text(
                                    'More filters',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: width * 0.010),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.010),
                              child: Container(
                                width: 40,
                                height: height * 0.05,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.settings,
                                  size: width * 0.013,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.020,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.2,
                          )),
                      margin: EdgeInsets.only(
                          right: width * 0.010, bottom: width * 0.010),
                      // color: Colors.grey,
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.05,
                            color: Colors.grey[300],
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.010),
                                  child: Container(
                                    height: height * 0.03,
                                    width: width * 0.015,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.020),
                                  child: Text(
                                    'Customer',
                                    style: TextStyle(
                                        fontSize: width * 0.010,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.080),
                                  child: Text(
                                    'Invoice',
                                    style: TextStyle(
                                        fontSize: width * 0.010,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.060),
                                  child: Text(
                                    'Status',
                                    style: TextStyle(
                                        fontSize: width * 0.010,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.040),
                                  child: Text(
                                    'Total Amount',
                                    style: TextStyle(
                                        fontSize: width * 0.010,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.035),
                                  child: Text(
                                    'Amount Due',
                                    style: TextStyle(
                                        fontSize: width * 0.010,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.035),
                                  child: Text(
                                    'Shop Rate',
                                    style: TextStyle(
                                        fontSize: width * 0.010,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.112),
                                  child: Text(
                                    'Due Date',
                                    style: TextStyle(
                                        fontSize: width * 0.010,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //! table
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: width * 0.0090),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.010),
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.015,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 0.3,
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.018),
                                      child: Container(
                                        width: width * 0.020,
                                        height: height * 0.035,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCp_ByMCZW8m0s3KmAbIENDvR2Zc_HkBJyYw&usqp=CAU',
                                                ),
                                                fit: BoxFit.cover)),
                                        // child: CircleAvatar(
                                        //   radius: 5,
                                        //   child: Image.network(
                                        //     '',
                                        //     fit: BoxFit.cover,
                                        //   ),
                                        // ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.005),
                                      child: Text(
                                        'Habib Uahid',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontSize: width * 0.010,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.040),
                                      child: Text(
                                        'F-0122095-8',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.040),
                                      child: Container(
                                        width: width * 0.045,
                                        height: height * 0.030,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          color: Colors.orange[200],
                                        ),
                                        child: Center(
                                            child: Text(
                                          'UnPaid',
                                          style: TextStyle(
                                              fontSize: width * 0.008,
                                              color: Colors.orange[800]),
                                        )),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.025),
                                      child: Text(
                                        '\$ 8,576',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.060),
                                      child: Text(
                                        '\$ 5,235',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.060),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: width * 0.09,
                                            height: height * 0.012,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[
                                                  300], // Background color
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors
                                                        .black, // Progress color
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  width: width * 0.06,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.010),
                                            child: Text(
                                              '70 %',
                                              style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.040),
                                      child: Text(
                                        '03 Mar 2003',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.050),
                                        child: Icon(
                                          MdiIcons.dotsHorizontal,
                                          color: Colors.grey,
                                          size: width * 0.014,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.020,
                          ),
                          Container(
                            height: 0.15,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                            ),
                          ),
                          //! column 2
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: width * 0.0090),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.010),
                                      child: Container(
                                        height: height * 0.03,
                                        width: width * 0.015,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 0.3,
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.018),
                                      child: Container(
                                        width: width * 0.020,
                                        height: height * 0.035,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCp_ByMCZW8m0s3KmAbIENDvR2Zc_HkBJyYw&usqp=CAU',
                                                ),
                                                fit: BoxFit.cover)),
                                        // child: CircleAvatar(
                                        //   radius: 5,
                                        //   child: Image.network(
                                        //     '',
                                        //     fit: BoxFit.cover,
                                        //   ),
                                        // ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.005),
                                      child: SizedBox(
                                        width: width * 0.058,
                                        child: Text(
                                          'AKhan',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.040),
                                      child: Text(
                                        'F-0122095-8',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.040),
                                      child: Container(
                                        width: width * 0.045,
                                        height: height * 0.030,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          color: Colors.green[100],
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Paid',
                                          style: TextStyle(
                                              fontSize: width * 0.008,
                                              color: Colors.green[800]),
                                        )),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.025),
                                      child: Text(
                                        '\$ 8,576',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.060),
                                      child: Text(
                                        '\$ 4,235',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.060),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: width * 0.09,
                                            height: height * 0.012,
                                            decoration: BoxDecoration(
                                              color: Colors.grey[
                                                  300], // Background color
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors
                                                        .black, // Progress color
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  width: width * 0.035,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.010),
                                            child: Text(
                                              '35 %',
                                              style: TextStyle(
                                                fontSize: width * 0.009,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.040),
                                      child: Text(
                                        '03 Mar 2003',
                                        style: TextStyle(
                                            fontSize: width * 0.010,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.050),
                                        child: Icon(
                                          MdiIcons.dotsHorizontal,
                                          color: Colors.grey,
                                          size: width * 0.014,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //! end colum
                          Expanded(
                            child: Container(),
                          ),
                          //!
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 0.2,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: width * 0.020, bottom: height * 0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.010),
                                  child: Container(
                                    width: width * 0.05,
                                    height: height * 0.04,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 0.3,
                                        )),
                                    child: Center(
                                        child: Text(
                                      'Previous',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: width * 0.009,
                                      ),
                                    )),
                                  ),
                                ),
                                Text(
                                  'Page 1 of 10',
                                  style: TextStyle(
                                    fontSize: width * 0.009,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: width * 0.010),
                                  child: Container(
                                    width: width * 0.05,
                                    height: height * 0.04,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 0.3,
                                        )),
                                    child: Center(
                                        child: Text(
                                      'Next',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize: width * 0.009,
                                      ),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ));
  }
}
