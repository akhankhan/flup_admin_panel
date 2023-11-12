import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TotalCustomer extends StatelessWidget {
  const TotalCustomer(
      {super.key,
      required this.icon,
      required this.title,
      required this.total,
      required this.percentage,
      required this.decreaseOrder});
  final icon;
  final String title;
  final String total;
  final String percentage;
  final bool decreaseOrder;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.14, //220
      height: height * 0.114, //90
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.white, blurRadius: 2, offset: Offset(0, 0.5))
          ],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 0.3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.020, left: width * 0.010),
                child: Icon(
                  icon,
                  size: width * 0.007,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.005,
                  top: height * 0.020,
                ),
                child: Text(
                  title,
                  style: TextStyle(color: Colors.grey, fontSize: width * 0.009),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.004,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.010),
                child: Text(
                  total,
                  style: TextStyle(
                    fontSize: width * 0.016,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.005),
                child: Icon(
                  MdiIcons.trendingUp,
                  size: width * 0.012,
                  color: decreaseOrder == true ? Colors.red : Colors.green,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: width * 0.005),
                  child: Text(
                    percentage,
                    style: TextStyle(
                      color: decreaseOrder == true ? Colors.red : Colors.green,
                      fontSize: width * 0.010,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
