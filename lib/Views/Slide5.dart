import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide5Controller.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';

class Slide5 extends GetView<Slide5Controller> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 30),
          child: Image.asset('assets/images/Appbar.PNG'),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Pharmacy Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Center(
              child: Container(
                width: 330,
                margin: EdgeInsets.only(bottom: 20, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Medicines ...",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
            ),

            // Medicines Title Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    'Medicines',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Icon(Icons.arrow_forward, size: 20, color: Colors.grey),
                ],
              ),
            ),

            // Image Cards
            Padding(
              padding: EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  buildImageCard('assets/images/calcium.PNG', 'Calcium'),
                  SizedBox(width: 20),
                  buildImageCard('assets/images/fish_oil.PNG', 'Fish Oil'),
                  SizedBox(width: 20),
                  buildImageCard('assets/images/vitamine.PNG', 'Vitamine'),
                ],
              ),
            ),

            // Filter Buttons


            // Medicine Cards
            buildMedicineCard(
              name: 'Aspirine',
              pharmacy: 'Jinan Pharmacy',
              imagePath: 'assets/images/aspirine.PNG',
              price: 6.12,
            ),
            buildMedicineCard(
              name: 'Otrivine',
              pharmacy: 'Hady Pharmacy',
              imagePath: 'assets/images/Otrivine.PNG',
              price: 6.12,
            ),
            buildMedicineCard(
              name: 'Noise Spiring',
              pharmacy: 'Jhon Pharmacy',
              imagePath: 'assets/images/NoiseSpiring.PNG',
              price: 6.12,
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

  Widget buildImageCard(String imagePath, String title) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Container(
            width: 100,
            color: Colors.blue.withOpacity(0.6),
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget buildMedicineCard({
    required String name,
    required String pharmacy,
    required String imagePath,
    required double price,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        pharmacy,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.location_on, size: 16, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle, color: Colors.blue),
                ),
                SizedBox(height: 4),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
