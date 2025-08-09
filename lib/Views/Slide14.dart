import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController3.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';



class Slide14 extends StatelessWidget  {
  final AdminNavController3 controller = Get.put(AdminNavController3());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Requests", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: (){Get.toNamed( AppRoute.slide15);},
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                  decoration:BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child:
                  Row(children: [
                    ClipOval(
                      child:
                      Image.asset('assets/images/Profile.PNG',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,

                      ),

                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Calcium",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        Text('Fadi')
                      ],),
                    SizedBox(width: 50,),
                    Image.asset('assets/images/calcium.PNG',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 90,),

                  ],)

              ),

            ),


            InkWell(
              onTap: (){Get.toNamed( AppRoute.slide15);},
              child:Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                  decoration:BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child:
                  Row(children: [
                    ClipOval(
                      child:
                      Image.asset('assets/images/Profile.PNG',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,

                      ),

                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Aspirine",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        Text('Razi')
                      ],),
                    SizedBox(width: 50,),
                    Image.asset('assets/images/aspirine.PNG',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 90,),

                  ],)

              ),
            ),

            InkWell( onTap: (){Get.toNamed( AppRoute.slide15);},
             child:  Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                  decoration:BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),

                  ),
                  child:
                  Row(children: [
                    ClipOval(
                      child:
                      Image.asset('assets/images/Profile.PNG',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,

                      ),

                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Vitamine",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        Text('Hadi')
                      ],),
                    SizedBox(width: 50,),
                    Image.asset('assets/images/vitamine.PNG',
                      fit: BoxFit.cover,
                      height: 80,
                      width: 90,),

                  ],)

              ),

            ),


          ],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: (val){
            controller.selectedIndex.value=val;

            switch(val){
              case 0:
                Get.offNamed(AppRoute.slide11);
                break;
              case 1:
                Get.offNamed(AppRoute.slide12);
                break;
              case 2:
                Get.offNamed(AppRoute.slide14);
                break;
              case 3:
                Get.offNamed(AppRoute.slide16);
                break;
              case 4:
                Get.offNamed(AppRoute.slide5);
                break;
            }

            },

          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 17,
          unselectedFontSize: 14,
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Manage'),
            BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Request'),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: 'Orders'),

          ],



         )),
    );
  }


  }

