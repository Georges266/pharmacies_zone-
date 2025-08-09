import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide10Controller.dart';


class Slide10Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Slide10Controller());
  }
}
