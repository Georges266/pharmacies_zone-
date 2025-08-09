import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide8Controller.dart';

class Slide8Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Slide8Controller());
  }
}
