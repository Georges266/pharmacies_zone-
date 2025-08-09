import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController2.dart';



class Slide13Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminNavController2());
  }
}
