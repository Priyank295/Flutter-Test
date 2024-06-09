import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/controllers/categoryCard.dart';
import 'package:get/get.dart';

import '../constant.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key});

  final CategoryCardController controller = CategoryCardController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                controller.updateIndex(0);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Color(0xfffBABABA))),
                child: Row(
                  children: [
                    Text(
                      "Live",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: controller.selectedIndex.value == 0
                              ? primaryColor
                              : secondaryColor),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset("assets/icons/live.svg",
                        color: controller.selectedIndex.value == 0
                            ? primaryColor
                            : secondaryColor),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () {
                controller.updateIndex(1);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Color(0xfffBABABA))),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/time.svg",
                        color: controller.selectedIndex.value == 1
                            ? primaryColor
                            : secondaryColor),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Pending",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: controller.selectedIndex.value == 1
                              ? primaryColor
                              : secondaryColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
