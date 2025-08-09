import 'package:get/get.dart';
import 'package:pharmacies_zone/Bindings/Slide10Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide11Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide12Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide13Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide14Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide15Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide16Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide1Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide2Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide3Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide4Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide5Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide6Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide7Binding.dart';
import 'package:pharmacies_zone/Bindings/Slide8Binding.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';
import 'package:pharmacies_zone/Views/Slide1.dart';
import 'package:pharmacies_zone/Views/Slide10.dart';
import 'package:pharmacies_zone/Views/Slide11.dart';
import 'package:pharmacies_zone/Views/Slide12.dart';
import 'package:pharmacies_zone/Views/Slide13.dart';
import 'package:pharmacies_zone/Views/Slide14.dart';
import 'package:pharmacies_zone/Views/Slide15.dart';
import 'package:pharmacies_zone/Views/Slide16.dart';
import 'package:pharmacies_zone/Views/Slide2.dart';
import 'package:pharmacies_zone/Views/Slide3.dart';
import 'package:pharmacies_zone/Views/Slide4.dart';
import 'package:pharmacies_zone/Views/Slide5.dart';
import 'package:pharmacies_zone/Views/Slide6.dart';
import 'package:pharmacies_zone/Views/Slide7.dart';
import 'package:pharmacies_zone/Views/Slide8.dart';

class AppPage{
  static final List <GetPage> pages = [
    GetPage(name: AppRoute.slide1, page: ()=> Slide1(),  binding: Slide1Binding()),
    GetPage(name: AppRoute.slide2, page: ()=> Slide2(),  binding: Slide2binding()),
    GetPage(name: AppRoute.slide3, page: ()=> Slide3(),  binding: Slide3Binding()),
    GetPage(name: AppRoute.slide4, page: ()=> Slide4(),  binding: Slide4Binding()),
    GetPage(name: AppRoute.slide5, page: ()=> Slide5(),  binding: Slide5Binding()),
    GetPage(name: AppRoute.slide6, page: ()=> Slide6(),  binding: Slide6Binding()),
    GetPage(name: AppRoute.slide7, page: ()=> Slide7(),  binding: Slide7Binding()),
    GetPage(name: AppRoute.slide8, page: ()=> Slide8(),  binding: Slide8Binding()),
    GetPage(name: AppRoute.slide10, page: ()=> Slide10(),  binding: Slide10Binding()),
    GetPage(name: AppRoute.slide11, page: ()=> Slide11(),  binding: Slide11Binding()),
    GetPage(name: AppRoute.slide12, page: ()=> Slide12(),  binding: Slide12Binding()),
    GetPage(name: AppRoute.slide13, page: ()=> Slide13(),  binding: Slide13Binding()),
    GetPage(name: AppRoute.slide14, page: ()=> Slide14(),  binding: Slide14Binding()),
    GetPage(name: AppRoute.slide15, page: ()=> Slide15(),  binding: Slide15Binding()),
    GetPage(name: AppRoute.slide16, page: ()=> Slide16(),  binding: Slide16Binding()),
  ];



}
