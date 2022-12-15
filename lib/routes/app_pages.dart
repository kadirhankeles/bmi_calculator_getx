import 'package:bmi_calculator_getx/modules/home/home_binding.dart';
import 'package:bmi_calculator_getx/modules/home/home_screen.dart';
import 'package:bmi_calculator_getx/modules/result/result_binding.dart';
import 'package:bmi_calculator_getx/modules/result/result_screen.dart';
import 'package:bmi_calculator_getx/modules/splash/splash_binding.dart';
import 'package:bmi_calculator_getx/modules/splash/splash_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart'; //Routes içindeki verilere erişmek için yazıldı.

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(name: Routes.SPLASH, page: () => SplashScreen(), binding: SplashBinding()),
    GetPage(name: Routes.RESULT, page: () => ResultScreen(), binding: ResultBinding()),
  ];
}
