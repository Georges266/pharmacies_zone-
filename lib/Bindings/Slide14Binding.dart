import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController3.dart';



class Slide14Binding  extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminNavController3());
  }
}
