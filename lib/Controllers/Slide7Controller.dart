import 'package:get/get.dart';



class Slide7Controller extends GetxController {

  var selectedIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 1;  // Make sure it's set on page load
  }

}
