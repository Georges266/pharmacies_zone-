import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/AdminNavController1.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';




class Slide12 extends StatelessWidget  {
  final AdminNavController1 controller = Get.put(AdminNavController1());


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
            Container(margin: EdgeInsets.only(top: 20,bottom: 20,left: 20),
              child: SizedBox(height: 30,width: 150,
              child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(30),

              ),
              child: Center(child: Text('Your Stock ',style: TextStyle(fontSize: 17),),),

              ),

              ),
            ),

            Container(margin: EdgeInsets.symmetric(horizontal: 20),

              child:
            ElevatedButton(
              onPressed: () { Get.toNamed(AppRoute.slide13);},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,

              ),
              child: Row(
                mainAxisSize: MainAxisSize.min, // Prevents unnecessary stretching
                children: [

                  Text('Add',
                    style: TextStyle(color: Colors.white,
                      fontSize: 20,

                    ),

                  ),
                  SizedBox(width: 20,height: 30,), // Adds spacing between text and icon
                  Icon(Icons.add, color: Colors.white),


                ],
              ),
            ),
              ),

            Container(
               margin: EdgeInsets.only(top: 20,left: 7,right: 7),



              child:
              DecoratedBox(decoration: BoxDecoration(color: Colors.grey[200]),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(children: [

                  Container(padding: EdgeInsets.only(left: 5),width: 180,margin: EdgeInsets.only(bottom: 10,),
                      decoration: BoxDecoration(border: Border.all(color:Colors.blue),),
                      child: Column(
                        children: [SizedBox(height: 5,),
                          Image.asset('assets/images/Otrivine.PNG',width: 100,),
                          Container(
                            margin: EdgeInsets.only(top: 5,right: 5),
                            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),
                                child:Column(children: [
                                  Row( children: [Text(' Price: 2\$'),
                                    SizedBox(width: 5,),
                                    Text('Quantity: 25    ')

                                  ],),
                                  Row(children: [

                                    ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue
                                      ),

                                      child: Text('Delete',style: TextStyle(color: Colors.white),
                                      ),
                                    ),SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue
                                      ),

                                      child: Text('Edit',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],),

                                ],)

                            ),)

                        ],)



                  ),
                  SizedBox(width: 10,),



                  Container(padding: EdgeInsets.only(left: 5),width: 180,margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(border: Border.all(color:Colors.blue),),
                      child: Column(
                        children: [SizedBox(height: 5,),
                          Image.asset('assets/images/aspirine.PNG',width: 100,),
                          Container(
                            margin: EdgeInsets.only(top: 5,right: 5),
                            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),
                                child:Column(children: [
                                  Row( children: [Text(' Price: 3\$'),
                                    SizedBox(width: 5,),
                                    Text('Quantity: 10    ')

                                  ],),
                                  Row(children: [

                                    ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue
                                      ),

                                      child: Text('Delete',style: TextStyle(color: Colors.white),
                                      ),
                                    ),SizedBox(width: 5,),
                                    ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue
                                      ),

                                      child: Text('Edit',style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],),

                                ],)

                            ),)

                        ],)



                  ),

                ],),

                  SizedBox(height: 5,),


                  Row(children: [

                    Container(padding: EdgeInsets.only(left: 5),width: 180,margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(border: Border.all(color:Colors.blue),),
                        child: Column(
                          children: [SizedBox(height: 5,),
                            Image.asset('assets/images/vitamine.PNG',width: 100,),
                            Container(
                              margin: EdgeInsets.only(top: 5,right: 5),
                              child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),
                                  child:Column(children: [
                                    Row( children: [Text(' Price: 4\$'),
                                      SizedBox(width: 5,),
                                      Text('Quantity: 15    ')

                                    ],),
                                    Row(children: [

                                      ElevatedButton(onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue
                                        ),

                                        child: Text('Delete',style: TextStyle(color: Colors.white),
                                        ),
                                      ),SizedBox(width: 5,),
                                      ElevatedButton(onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue
                                        ),

                                        child: Text('Edit',style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],),

                                  ],)

                              ),)

                          ],)



                    ),
                    SizedBox(width: 10,),


                    Container(padding: EdgeInsets.only(left: 5),width: 180,margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(border: Border.all(color:Colors.blue),),
                        child: Column(
                          children: [SizedBox(height: 5,),
                            Image.asset('assets/images/calcium.PNG',width: 100,),
                            Container(
                              margin: EdgeInsets.only(top: 5,right: 5),
                              child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),
                                  child:Column(children: [
                                    Row( children: [Text(' Price: 5\$'),
                                      SizedBox(width: 5,),
                                      Text('Quantity: 20    ')

                                    ],),
                                    Row(children: [

                                      ElevatedButton(onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue
                                        ),

                                        child: Text('Delete',style: TextStyle(color: Colors.white),
                                        ),
                                      ),SizedBox(width: 5,),
                                      ElevatedButton(onPressed: (){},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue
                                        ),

                                        child: Text('Edit',style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],),

                                  ],)

                              ),)

                          ],)



                    ),



                  ],),



                ],)

              ),

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
