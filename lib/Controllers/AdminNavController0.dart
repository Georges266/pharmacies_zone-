import 'package:get/get.dart';



class AdminNavController0  extends GetxController {

  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 0;  // Make sure it's set on page load
  }
}
