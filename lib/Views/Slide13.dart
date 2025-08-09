import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController2.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';




class Slide13 extends StatelessWidget   {
  final AdminNavController2 controller = Get.put(AdminNavController2());

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
          child: Text("Stock Management", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child:Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(margin: EdgeInsets.all(30),
               height: 30,width: 200,
                child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(30),

                ),
                  child: Center(child: Text('Add Medicine Details  ',style: TextStyle(fontSize: 17),),),

                ),


            ),

            Container(margin: EdgeInsets.all(30),

                width: 300,

                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/AddMedicine.PNG', ),
                    Container(

                      child: DecoratedBox(decoration: BoxDecoration(color: Colors.blue),
                          child:
                          Padding(
                              padding: EdgeInsets.only(left: 10,right: 5,bottom: 10),
                              child:
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text('Name:',style: TextStyle(color: Colors.white),),
                              SizedBox(height: 5,),
                              TextField(

                                decoration: InputDecoration(

                                    filled: true,
                                    fillColor: Colors.white),),
                              SizedBox(height: 10,),
                              Text('Description:',style: TextStyle(color: Colors.white),),
                              SizedBox(height: 5,),
                              TextField(

                                decoration: InputDecoration(

                                    filled: true,
                                    fillColor: Colors.white),),
                              SizedBox(height: 5,),

                              Row(children: [
                               Column(children: [
                                 Text("Price:   ",style: TextStyle(color: Colors.white),),
                                 SizedBox(width: 50,height: 40,
                                   child: TextField(decoration: InputDecoration(
                                     fillColor: Colors.white,
                                     filled: true,
                                   ),),
                                 ),




                               ],),SizedBox(width: 25,),
                              Column(children: [

                              Text("Stock:   ",style: TextStyle(color: Colors.white),),
                                     SizedBox(width: 50,height: 40,
                              child: TextField(decoration: InputDecoration(
                                fillColor: Colors.white,
                              filled: true,
                               ),),
                               ),
                                ],),

                                SizedBox(width: 25,),
                                Column(children: [

                                  Text("EX Date:   ",style: TextStyle(color: Colors.white),),
                                  SizedBox(width: 120,height: 40,
                                    child: TextField(decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),),
                                  ),
                                ],)

                              ],),

                              SizedBox(height: 20,),

                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [


                                ElevatedButton(onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green
                                  ),

                                  child: Text('Add',style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],),

                            ],)
                          ),

                      ),)

                  ],)



            ),


          ],),

      ),


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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Request'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: 'Orders'),

        ],
      )),
    );





  }
}
