import 'package:bmi_calculator_getx/modules/home/home_controller.dart';
import 'package:bmi_calculator_getx/modules/result/result_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ResultScreen extends GetView<ResultController> {
  ResultScreen({super.key});
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 18),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey.withOpacity(0.2)), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Your BMI is", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
                 Text("${homeController.ortalama!.toStringAsFixed(2)}", style: TextStyle(color: homeController.yaziRengi(homeController.ortalama), fontSize: 60, fontWeight: FontWeight.bold),),
                 Text("This value is in the ${homeController.sonucYazisi(homeController.ortalama)} \n  of ${homeController.yasGrubu(homeController.yas)} for your age group."),
                ],
              ),
            ),
            SizedBox(height: 170,),
            GestureDetector(
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> homePage()));
                homeController.yas=0;
                homeController.ortalama=0;
                homeController.kilo=0;
                homeController.boy=0;
                Get.back();
              },
              child: Container(width: double.infinity,
              height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFF468EF8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.refresh_outlined, color: Colors.white,),
                  Text('Start over', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}