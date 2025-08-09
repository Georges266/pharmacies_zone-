import 'package:get/get.dart';



class AdminNavController  extends GetxController {

  var selectedIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 1;  // Make sure it's set on page load
  }
}
