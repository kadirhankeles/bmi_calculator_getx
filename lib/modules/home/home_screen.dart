import 'package:bmi_calculator_getx/modules/home/home_controller.dart';
import 'package:bmi_calculator_getx/modules/result/result_binding.dart';
import 'package:bmi_calculator_getx/modules/result/result_screen.dart';
import 'package:bmi_calculator_getx/modules/splash/splash_binding.dart';
import 'package:bmi_calculator_getx/modules/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../routes/app_pages.dart';

class HomeScreen extends GetView<HomeController> {
    HomeScreen({super.key});
  TextEditingController _controllerage=TextEditingController();
  TextEditingController _controllerheight=TextEditingController();
  TextEditingController _controllerweight=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Text(
                'Lets calculate \nyour current BMI',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You can find out whether you are \n overweight, underweight or ideal weight',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _controllerage,
                 inputFormatters: <TextInputFormatter>[
                 FilteringTextInputFormatter.digitsOnly,
                 LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: "Age",
                ),
           
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                 inputFormatters: <TextInputFormatter>[
                 FilteringTextInputFormatter.digitsOnly,
                 LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration:
                    InputDecoration(labelText: "Height", suffixText: "CM"),
               controller: _controllerheight,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                inputFormatters: <TextInputFormatter>[
                 FilteringTextInputFormatter.digitsOnly,
                 LengthLimitingTextInputFormatter(3),
                ],
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Weight", suffixText: "KG"),
               controller: _controllerweight,
              ),
              SizedBox(
                height: 230,
              ),
              GestureDetector(
                onTap: () {


                  print(_controllerage.text.isEmpty);                  
                  //print("Vücut kitle indeksiniz: $ortalama");
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sonucEkrani() ));
                  if (_controllerage.text.isEmpty || _controllerheight.text.isEmpty || _controllerweight.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Değerleri boş bırakmayınız"),
                    ));
                  }else{
                     controller.yas=int.parse(_controllerage.text);
                      controller.kilo=double.parse(_controllerweight.text);
                      controller.boy=double.parse(_controllerheight.text);
                    if((controller.yas > 0 && controller.yas <= 120) && (controller.boy > 50 && controller.boy <= 220) && (controller.kilo > 0  && controller.kilo <= 300)){ 
                     
                      controller.boy = controller.boy / 100;
                  controller.ortalama = controller.kilo / (controller.boy * controller.boy);
                  print("***********************"+ "${controller.ortalama}");
                      Get.to(ResultScreen(), binding: ResultBinding());
                              
                              }

                              else {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Girilen değerleri kontrol ediniz"),
                    ));
                              }
                    }
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF468EF8)),
                  child: Center(
                      child: Text(
                    'Calculate BMI',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}