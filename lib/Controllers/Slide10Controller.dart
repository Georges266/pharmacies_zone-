import 'package:get/get.dart';



class Slide10Controller  extends GetxController {

  var selectedIndex = 3.obs;

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 3;  // Make sure it's set on page load
  }
}
