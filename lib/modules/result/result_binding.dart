import 'package:bmi_calculator_getx/modules/home/home_controller.dart';
import 'package:bmi_calculator_getx/modules/result/result_controller.dart';
import 'package:get/get.dart';

class ResultBinding implements Bindings{
  @override
  void dependencies() {
    print("Çalıştıııııııııııı");
    Get.put(ResultController());
  }

}