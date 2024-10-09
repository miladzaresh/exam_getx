import 'package:get/get.dart';
import 'package:price_management/src/pages/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());

  }
}