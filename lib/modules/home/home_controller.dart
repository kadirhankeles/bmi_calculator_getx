import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController{
  int yas= 0;
  double kilo= 0.0;
  double boy= 0.0;
  double ortalama=0.0;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("Home Sayfası Açıldı");
  }
  String sonucYazisi(ortalama){
    if(ortalama < 18.50){
      return "Underweight";
    }else if (ortalama >= 18.5 && ortalama < 24.9){
      return "Healthy Weight";
    }else if (ortalama >= 25.0 && ortalama < 29.9){
      return "Overweight";
    }else{return "Obesity";}  
  }
  Color yaziRengi(ortalama){
    if(ortalama < 18.50){
      return Colors.blue;
    }else if (ortalama >= 18.5 && ortalama < 24.9){
      return Colors.green;
    }else if (ortalama >= 25.0 && ortalama < 29.9){
      return Colors.orange;
    }else{return Colors.red;} 
  }
  String yasGrubu(yas){
    if(yas <= 19){
      return "0-19";
    }else if(yas >= 20 && yas <=25){
      return "20-25";
    }else if(yas >= 26 && yas <=29){
      return "26-29";
    }else if(yas >= 30 && yas <=34){
      return "30-34";
    }else if(yas >= 35 && yas <=39){
      return "35-39";
    }else if(yas >= 40 && yas <=44){
      return "40-44";
    }else {return "45+";}
  }
}