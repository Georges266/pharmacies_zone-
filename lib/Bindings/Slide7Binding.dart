import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide7Controller.dart';

class Slide7Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Slide7Controller());
  }
}
