import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide10Controller.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController0.dart';


class Slide11Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminNavController0());
  }
}
