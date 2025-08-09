import 'package:get/get.dart';

import 'package:pharmacies_zone/Views/Slide5.dart';
import 'package:pharmacies_zone/Views/Slide6.dart';
import 'package:pharmacies_zone/Views/Slide7.dart';

class Slide5Controller extends GetxController {
  var selectedIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 0;  // Make sure it's set on page load
  }

  }



