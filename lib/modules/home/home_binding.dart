import 'package:bmi_calculator_getx/modules/home/home_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}