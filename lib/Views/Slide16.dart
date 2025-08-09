import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide10Controller.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController5.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';

class Slide16 extends StatelessWidget  {
  final AdminNavController5 controller = Get.put(AdminNavController5());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back(); // GetX way to go back
          },
        ),
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Your Order History", style: TextStyle(color: Colors.black)),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Header Badge
            Container(
              margin: EdgeInsets.all(30),
              child: SizedBox(
                height: 30,
                width: 150,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(" Order History ", style: TextStyle(fontSize: 17)),
                  ),
                ),
              ),
            ),



            DataTable(
                headingRowColor: MaterialStateProperty.resolveWith((states)=>Colors.blue[200]),
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Price')),
                  DataColumn(label: Text('Stock')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Date')),

                ],
                rows: [
                  DataRow(
                      color:MaterialStateProperty.all(Colors.grey[200]),
                      cells:[
                        DataCell(Text('Panadol')),
                        DataCell(Text('2.2\$')),
                        DataCell(Text('2 ')),
                        DataCell(Text('Accepted ',style: TextStyle(color: Colors.green),)),
                        DataCell(Text('2/2/2024 ')),


                      ] ),
                  DataRow(
                      color:MaterialStateProperty.all(Colors.grey[200]),
                      cells: [
                        DataCell(Text('Tramadole')),
                        DataCell(Text('2.2\$')),
                        DataCell(Text('2 ')),
                        DataCell(Text('Rejected ',style: TextStyle(color: Colors.red),)),
                        DataCell(Text('2/2/2024 ')),
                      ]),
                  DataRow(
                      color:MaterialStateProperty.all(Colors.grey[200]),
                      cells: [
                        DataCell(Text('Aspirin')),
                        DataCell(Text('2.2\$')),
                        DataCell(Text('2 ')),
                        DataCell(Text('Review ',style: TextStyle(color: Colors.blue),)),
                        DataCell(Text('2/2/2024 ')),
                      ])
                ]
            )

          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: (val) {
          controller.selectedIndex.value = val;

          switch (val) {
            case 0:
              Get.offNamed(AppRoute.slide11);
              break;
            case 1:
              Get.offNamed(AppRoute.slide12);
              break;
            case 2:
              Get.offNamed(AppRoute.slide15);
              break;
            case 3:
              Get.offNamed(AppRoute.slide16);
              break;

          }
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 17,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: 'Orders'),

        ],
      )),
    );
  }
}
