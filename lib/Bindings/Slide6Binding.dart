import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide6Controller.dart';

class Slide6Binding extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(()=>Slide6Controller());
  }


}
