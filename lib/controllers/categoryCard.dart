import 'package:get/get.dart';

class CategoryCardController extends GetxController {
  var selectedIndex = 0.obs;
  void updateIndex(int index) {
    selectedIndex.value = index;
  }
}
