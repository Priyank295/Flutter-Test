import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/constant.dart';
import 'package:flutter_task/controllers/BottomNav.dart';
import 'package:flutter_task/screens/home.dart';
import 'package:flutter_task/widgets/topnavbar.dart';
import 'package:get/get.dart';
import 'screens/product.dart';
import 'screens/profile.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: BottomNavigator(),
    ),
  );
}

class BottomNavigator extends StatelessWidget {
  BottomNavigator({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  List<Widget> _widgets = [
    Home(),
    TopNavBar(),
    Product(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => _widgets.elementAt(controller.selectedIndex.value)),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xfffAEA9B1),
            ),
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xfff007B29),
            ),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/home.svg',
                    color: controller.selectedIndex.value == 0
                        ? primaryColor
                        : secondaryColor),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Order.svg',
                    color: controller.selectedIndex.value == 1
                        ? primaryColor
                        : secondaryColor),
                label: "Order",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Product.svg',
                    color: controller.selectedIndex.value == 2
                        ? primaryColor
                        : secondaryColor),
                label: "Product",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/Profile.svg',
                    color: controller.selectedIndex.value == 3
                        ? primaryColor
                        : secondaryColor),
                label: "Profile",
              ),
            ],

            currentIndex: controller.selectedIndex.value,
            // selectedItemColor: Colors.blue,

            selectedItemColor: Color(0xfff007B29),
            unselectedItemColor: Color(0xfffAEA9B1),
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);
            },
          ),
        ));
  }
}
