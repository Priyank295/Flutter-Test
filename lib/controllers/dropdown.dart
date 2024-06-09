import 'package:get/get.dart';

class DropDownController extends GetxController {
  var dropdownValue = "Weekly".obs;

  void updateValue(String value) {
    dropdownValue.value = value;
  }
}
