import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pharmacies_zone/Controllers/Slide7Controller.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';





class Slide7 extends GetView<Slide7Controller> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Customize color
          onPressed: (
              ) {
            Get.toNamed(AppRoute.slide6);  // GetX way to go back
          },
        ),
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Search Details", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child:

        Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              margin: EdgeInsets.all(25),
              child: Image.asset(
                'assets/images/Otrivine.PNG',
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ),

          Container(
            margin: EdgeInsets.only(left: 25),
            child:
            Text("Otrivine",
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)
              ,
            ),

          ),
            Container(
              margin: EdgeInsets.only(left: 25),
              child:
              Text('Ex: (2/7/2026)'),
            ),
            Container(
              margin: EdgeInsets.only(left: 25 ,bottom: 25),
              child:
              Text('Panadol extra for decline the pain in Head'),
            ),

            Row(

              children: [
                SizedBox(width: 20),
              Text(' LBP 500.000    \$5.10',
              style: TextStyle(fontSize: 20),),
                SizedBox(width: 70,),
                IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.blue,),
                  onPressed: () {
                    // Add to cart logic
                  },
                ),
                Text('3',style: TextStyle(fontSize: 17),)
             ],
            ),
           Container(margin: EdgeInsets.only(left: 24,top: 20),
             color: Colors.grey[200],
             width: 330,
             height: 30,
               child: Row(children: [

              Text('Razi Pharmacy',
              style: TextStyle(
              fontSize: 20),),
                 SizedBox(width: 130,),
                 Icon(Icons.location_on,color: Colors.blue,)
               ],
               ),
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
}
