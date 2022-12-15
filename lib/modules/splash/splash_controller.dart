import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../routes/app_pages.dart';

class SplashController extends GetxController{
  @override
  onReady() async{
    // TODO: implement onReady
    
    await Future.delayed(Duration(milliseconds: 3000));
    Get.toNamed(Routes.HOME);
  }
}