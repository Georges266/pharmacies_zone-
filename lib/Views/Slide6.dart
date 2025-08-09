import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController3.dart';
import 'package:pharmacies_zone/Controllers/Slide6Controller.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';
import 'package:pharmacies_zone/Views/Slide7.dart';  // Import Slide7

class Slide6 extends GetView<Slide6Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.toNamed(AppRoute.slide5);
          },
        ),
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Search Details", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            _pharmacyItem(
              context,
              'Otrivine',
              '\$ 3',
              'Razi Pharmacy',
              'assets/images/Otrivine.PNG',
            ),
            _pharmacyItem(
              context,
              'Otrivine',
              '\$ 5',
              'Hadi Pharmacy',
              'assets/images/Otrivine.PNG',
            ),
            _pharmacyItem(
              context,
              'Otrivine',
              '\$ 4',
              'Issam Pharmacy',
              'assets/images/Otrivine.PNG',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,

        onTap: (val) {
          controller.selectedIndex.value = val;

          switch (val) {
            case 0:
              Get.offNamed(AppRoute.slide5);
              break;
            case 1:
              Get.offNamed(AppRoute.slide6);
              break;
            case 2:
              Get.offNamed(AppRoute.slide8);
              break;
            case 3:
              Get.offNamed(AppRoute.slide10);
              break;

          }
        },


        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 17,
        unselectedFontSize: 14,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: 'Orders'),

        ],
      )),


    );
  }

  Widget _pharmacyItem(BuildContext context, String drugName, String price, String pharmacyName, String imagePath) {
    return InkWell(
      onTap: () {
        Get.toNamed(AppRoute.slide7);
      },
      child: Container(
        height: 80,
        color: Colors.grey[200],
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 60,
              height: 60,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(drugName, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 7),
                Text(price),
              ],
            ),
            SizedBox(width: 35),
            VerticalDivider(
              thickness: 1,
              color: Colors.grey,
              indent: 10,
              endIndent: 5,
            ),
            Text(pharmacyName, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
