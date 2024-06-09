import 'package:get/get.dart';

class CustomerInfoController extends GetxController {
  var show = false.obs;

  void updateValue() {
    show.value = !show.value;
  }
}
