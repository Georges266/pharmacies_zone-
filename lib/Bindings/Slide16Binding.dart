import 'package:get/get.dart';

import 'package:pharmacies_zone/Controllers/AdminNavController5.dart';



class Slide16Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminNavController5());
  }
}
