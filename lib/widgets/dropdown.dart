import 'package:flutter/material.dart';
import 'package:flutter_task/controllers/dropdown.dart';
import 'package:get/get.dart';

class CustomDropdown extends StatelessWidget {
  final DropDownController controller = Get.put(DropDownController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        // borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: Obx(
          () => DropdownButton<String>(
            value: controller.dropdownValue.value,
            icon: Icon(Icons.arrow_drop_down, color: Colors.red),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.grey, fontSize: 18),
            onChanged: (String? newValue) {
              controller.updateValue(newValue!);
            },
            items: <String>['Weekly', 'Monthly', 'Yearly']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    // height: ,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
