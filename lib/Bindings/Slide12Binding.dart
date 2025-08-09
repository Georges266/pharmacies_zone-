import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController1.dart';


class Slide12Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminNavController1());
  }
}
