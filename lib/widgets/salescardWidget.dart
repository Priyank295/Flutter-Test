import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/constant.dart';
import 'package:flutter_task/models/salescards.dart';

Widget salesCard(context, SalesCard item) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      border: const Border(
        bottom: BorderSide(
          width: 1,
          color: Color(
            0xfff228F45,
          ),
        ),
      ),
    ),
    height: 106,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(item.img),
        Text(
          item.title,
          style: const TextStyle(fontSize: 12, color: Color(0xfff7A808C)),
        ),
        Text(
          item.total,
          style: TextStyle(
            fontSize: 16,
            color: primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
