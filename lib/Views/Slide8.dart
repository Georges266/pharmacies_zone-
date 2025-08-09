import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pharmacies_zone/Controllers/Slide8Controller.dart';
import 'package:pharmacies_zone/Routes/AppRoute.dart';




class Slide8 extends GetView<Slide8Controller> {




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
          child: Text("Cart Confirmation", style: TextStyle(color: Colors.black)),
        ),
      ),
      body: SingleChildScrollView(

        child:Container(
            margin: EdgeInsets.only(left: 24,top: 20,right: 20),
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            decoration:
            BoxDecoration(color: Colors.grey[300] , borderRadius:BorderRadius.circular(20)),

            child:

        Row( crossAxisAlignment: CrossAxisAlignment.start,  children: [


          Image.asset("assets/images/calcium.PNG",

          ),
         SizedBox(width: 20),
         Column( crossAxisAlignment: CrossAxisAlignment.start,  children: [
           Text("Panadol",
             style: TextStyle(  fontSize: 20),),
              SizedBox(height: 20,),
            Row( mainAxisAlignment: MainAxisAlignment.start, children: [

             Container(
               color: Colors.white,
               padding: EdgeInsets.all(5),
               child:

             Text('3\$', style: TextStyle(color: Colors.blue),),),
             SizedBox(width: 25,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                child:

                Text('1', style: TextStyle(color: Colors.blue),),),

              SizedBox(width: 15,),
              Container(
                color: Colors.blue[200],
                height: 40,

                child:

                TextButton(onPressed: () {}, child: Text('Confirm',style: TextStyle(color: Colors.white),

                ),),),

            ],)
         ],),

         ],

        ),
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
