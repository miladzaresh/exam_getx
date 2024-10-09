import 'package:get/get.dart';
import 'package:price_management/src/infrastructure/route/route_name.dart';
class SplashController extends GetxController{
  RxString welcomeText='hello'.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(
      seconds: 3
    ),(){
      Get.offAndToNamed(RouteName.home);

    });
  }
}