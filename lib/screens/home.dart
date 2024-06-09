import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_task/constant.dart';
import 'package:flutter_task/widgets/dropdown.dart';
import 'package:flutter_task/widgets/graphcard.dart';
import 'package:flutter_task/widgets/salescardWidget.dart';

import '../models/salescards.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<SalesCard> salesCardList = [
    SalesCard("assets/icons/revenue.svg", "Total Revenue", "\u{20B9} 770"),
    SalesCard("assets/icons/online.svg", "Online Order", "#234"),
    SalesCard("assets/icons/return.svg", "Return Order", "#100"),
    SalesCard("assets/icons/cancel.svg", "Cancelled Orders", "#100"),
    SalesCard("assets/icons/instock.svg", "In Stock Product", "#100"),
    SalesCard("assets/icons/outstock.svg", "In Stock Product", "#100"),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 72,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Shop",
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black, fontSize: 18),
        ),
      ),
      drawer: const Drawer(
        surfaceTintColor: Color(0xfffF0F0F0),
        // semanticLabel: "asdas",
      ),
      body: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Product Sales",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 7),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Total Product Sales",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff625B71),
                                ),
                              ),
                              CustomDropdown(),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(height: 175, child: BarChartSample())
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AlignedGridView.count(
                // scrollDirection: Axis,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                shrinkWrap: true,
                itemCount: salesCardList.length,
                itemBuilder: (context, index) {
                  return salesCard(context, salesCardList[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
