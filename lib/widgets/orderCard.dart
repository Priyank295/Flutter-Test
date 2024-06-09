import 'package:data_table_2/data_table_2.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/controllers/customerInfo.dart';
import 'package:get/get.dart';

import '../constant.dart';

class OrderCard extends StatefulWidget {
  OrderCard({super.key});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  bool show = false;

  TextStyle columnTextStyle = const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black);

  TextStyle rowTextStyle = const TextStyle(
    fontSize: 14,
    color: Color(
      0xfff605D64,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.white),
      child: Expanded(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/live.svg",
                        color: Colors.white,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        "Oder ID :",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "46736364",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/clock.svg",
                        color: Colors.white,
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        "5 Min Ago",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                children: [
                  // CustomDataTable(),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Text(
                            "Title",
                            style: columnTextStyle,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Q",
                            style: columnTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Price",
                            style: columnTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Text(
                            "Fresho Capsicum 500 gm",
                            style: rowTextStyle,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "5",
                            style: rowTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "₹120",
                            style: rowTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Text(
                            "Fresho Capsicum 500 gm",
                            style: rowTextStyle,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "5",
                            style: rowTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "₹120",
                            style: rowTextStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 8),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      SizedBox(width: 16),
                      Text(
                        '₹240',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 1,
                    color: Color(0xfff9E9E9E),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/customer.svg",
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Customer info",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              show
                                  ? const Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.black,
                                    )
                                  : const Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  show
                      ? Container(
                          margin: const EdgeInsets.only(top: 15),
                          width: double.infinity,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Customer info",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nidhi Dobariya",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xfff625B71),
                                    ),
                                  ),
                                  Text(
                                    "6351865566",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xfff625B71),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "A -2 Parth Society  Ahemdabad",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xfff625B71),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Payment Mode",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Cash on delivery",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : Container(),

                  //Under Drop down
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            DottedLine(
              direction: Axis.horizontal,
              dashColor: secondaryColor,
              dashLength: 7,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 52,
                      // width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(color: secondaryColor),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              color: Color(0xfffBABABA),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 52,
                      // width: 170,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                        child: Text(
                          "Process Oder",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDataTable extends StatelessWidget {
  TextStyle columnTextStyle = const TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black);
  TextStyle rowTextStyle = const TextStyle(
    fontSize: 14,
    color: Color(
      0xfff605D64,
    ),
  );
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size().width;
    return DataTable2(
      dividerThickness: 0,
      horizontalMargin: 0,
      headingRowHeight: 30,
      // columnSpacing: ,
      // lmRatio: 3,
      // smRatio: 1,
      dataRowHeight: 30,

      // smRatio: 0.5,
      // bottomMargin: 8,

      columns: [
        DataColumn2(
            label: Text(
              'Title',
              style: columnTextStyle,
            ),
            fixedWidth: MediaQuery.of(context).size.width * 0.7),
        DataColumn2(
            label: Text(
              'Q',
              style: columnTextStyle,
            ),
            fixedWidth: MediaQuery.of(context).size.width * 0.1),
        DataColumn2(
          label: Text(
            'Price',
            style: columnTextStyle,
            textAlign: TextAlign.end,
          ),
          // size: ColumnSize.S,
          fixedWidth: MediaQuery.of(context).size.width * 0.1,
        ),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(
            'Fresho Capsicum 500 gm',
            style: rowTextStyle,
          )),
          DataCell(Text(
            '5',
            style: rowTextStyle,
          )),
          DataCell(Text(
            '₹120',
            style: rowTextStyle,
          )),
        ]),
        DataRow(cells: [
          DataCell(Text(
            'Tomato Ketchup 500 gm',
            style: rowTextStyle,
          )),
          DataCell(Text(
            '5',
            style: rowTextStyle,
          )),
          DataCell(Text(
            '₹120',
            style: rowTextStyle,
          )),
        ]),
      ],
    );
  }
}
