import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/controllers/topNav.dart';
import 'package:flutter_task/screens/order.dart';
import 'package:get/get.dart';

import '../constant.dart';

class TopNavBar extends StatelessWidget {
  TopNavBar({super.key});

  final TopNavBarController controller = Get.put(TopNavBarController());

  // int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    Order(),
    const Expanded(child: Center(child: Text('Shipping Page'))),
    const Expanded(child: Center(child: Text('Return Page'))),
    const Expanded(child: Center(child: Text('Completed Page'))),
  ];

  // int _selectedIndex = 0;
  Widget _buildNavItem(String icon, String label, int index) {
    return Obx(() => GestureDetector(
          onTap: () {
            controller.updateIndex(index);
            // _onItemTapped(index);
          },
          child: Expanded(
            flex: 1,
            child: Container(
              // width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: controller.selectedIndex.value == index
                      ? BorderSide(width: 1, color: primaryColor)
                      : BorderSide.none,
                ),
              ),
              // width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    color: controller.selectedIndex.value == index
                        ? primaryColor
                        : secondaryColor,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    label,
                    style: TextStyle(
                      color: controller.selectedIndex.value == index
                          ? primaryColor
                          : secondaryColor,
                      fontWeight: controller.selectedIndex.value == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xfffF7F6F6),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 5),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // scrollDirection: Axis.horizontal,
                  // // itemExtent: 100,
                  // shrinkWrap: true,
                  children: [
                    _buildNavItem('assets/icons/live.svg', 'Oder', 0),
                    _buildNavItem('assets/icons/ship.svg', 'Shipping', 1),
                    _buildNavItem('assets/icons/close.svg', 'Return', 2),
                    _buildNavItem('assets/icons/true.svg', 'Completed', 3),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                      child: Obx(
                () => _widgetOptions.elementAt(controller.selectedIndex.value),
              )))
            ],
          ),
        ),
      ),
    );
  }
}
