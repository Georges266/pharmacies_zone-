import 'package:get/get.dart';




class AdminNavController extends GetxController {

  var selectedIndex = 3.obs;

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 3;  // Make sure it's set on page load
  }

}
