import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController4.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';


class Slide15 extends StatelessWidget  {
  final AdminNavController4 controller = Get.put(AdminNavController4());
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
          child: Text("Requests Reply", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(left: 24,top: 20,right: 20),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              decoration:
              BoxDecoration(color: Colors.grey[300] , borderRadius:BorderRadius.circular(20)),

              child:

              Column(children: [
                Row( crossAxisAlignment: CrossAxisAlignment.center,  children: [


                  Image.asset("assets/images/calcium.PNG",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),
                  Column( crossAxisAlignment: CrossAxisAlignment.start,  children: [
                    Text("Panadol",
                      style: TextStyle(  fontSize: 20),),
                    SizedBox(height: 5,),
                    Text('Fadi', ),
                    SizedBox(height: 10,),
                    Row( mainAxisAlignment: MainAxisAlignment.start, children: [

                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(5),
                        child:

                        Text('Price: 3\$', style: TextStyle(color: Colors.blue),),),
                      SizedBox(width: 5,),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(5),
                        child:

                        Text('Quantity: 1', style: TextStyle(color: Colors.blue),),
                      ),

                    ],),
                    SizedBox(height: 10,),


                  ],),



                ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  TextButton(onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    child: Text('Accept',style: TextStyle(color: Colors.white),

                    ),),
                  SizedBox(width: 20,),

                  TextButton(onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                    ),
                    child: Text('Review',style: TextStyle(color: Colors.white),

                    ),),

                  SizedBox(width: 20,),

                  TextButton(onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red
                    ),
                    child: Text('Reject',style: TextStyle(color: Colors.white),

                    ),),

                ],),
              ],)

            ),
            SizedBox(height: 10,),
            Container(
                margin: EdgeInsets.only(left: 24,top: 20,right: 20),
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                decoration:
                BoxDecoration(color: Colors.grey[300] , borderRadius:BorderRadius.circular(20)),

                child:

                Column(children: [
                  Row( crossAxisAlignment: CrossAxisAlignment.center,  children: [


                    Image.asset("assets/images/Otrivine.PNG",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Column( crossAxisAlignment: CrossAxisAlignment.start,  children: [
                      Text("Otrivine",
                        style: TextStyle(  fontSize: 20),),
                      SizedBox(height: 5,),
                      Text('Hadi', ),
                      SizedBox(height: 10,),
                      Row( mainAxisAlignment: MainAxisAlignment.start, children: [

                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child:

                          Text('Price: 4\$', style: TextStyle(color: Colors.blue),),),
                        SizedBox(width: 5,),
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5),
                          child:

                          Text('Quantity: 2', style: TextStyle(color: Colors.blue),),
                        ),

                      ],),
                      SizedBox(height: 10,),


                    ],),



                  ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.green
                        ),
                        child: Text('Accept',style: TextStyle(color: Colors.white),

                        ),),
                      SizedBox(width: 20,),

                      TextButton(onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.yellow,
                        ),
                        child: Text('Review',style: TextStyle(color: Colors.white),

                        ),),

                      SizedBox(width: 20,),

                      TextButton(onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red
                        ),
                        child: Text('Reject',style: TextStyle(color: Colors.white),

                        ),),

                    ],),
                ],)

            ),
            SizedBox(height: 10,),


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

          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Manage'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Request'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt_rounded), label: 'Orders'),

        ],



      )),
    );
  }


}

