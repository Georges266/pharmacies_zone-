import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide10Controller.dart';
import 'package:pharmacies_zone/Controllers/Slide6Controller.dart';
import 'package:pharmacies_zone/Controllers/Slide7Controller.dart';
import 'package:pharmacies_zone/Controllers/Slide8Controller.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';




class Slide10 extends GetView<Slide10Controller> {




  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Customize color
          onPressed: () {
            Get.back();  // GetX way to go back
          },
        ),
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Your Order History", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child:Column(
         children: [
           Container(margin: EdgeInsets.all(30),
             child: SizedBox(
               height: 30,
               width: 150,

               child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey[300],
                 borderRadius: BorderRadius.circular(30),

               ),
                 child:Center(child:
                 Text(" Order History ",style: TextStyle(fontSize: 17),),

                 ),

               ),

             ),
           ),
           Container(

             child:
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

               ])
             ,)


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
}
