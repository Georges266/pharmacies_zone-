import 'package:get/get.dart';

import 'package:pharmacies_zone/Controllers/AdminNavController4.dart';



class Slide15Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminNavController4());

  }
}
