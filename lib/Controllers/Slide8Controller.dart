import 'package:get/get.dart';



class Slide8Controller  extends GetxController {

  var selectedIndex = 2.obs;

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 2;  // Make sure it's set on page load
  }
}
