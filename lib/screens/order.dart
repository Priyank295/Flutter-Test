import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/categorycards.dart';
import 'package:flutter_task/widgets/orderCard.dart';

class Order extends StatelessWidget {
  Order();

  // int
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 4,
              ),
              CategoryCard(),

              //OrderCard-->
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Column(
                  children: [
                    OrderCard(),
                    OrderCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
