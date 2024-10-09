import 'package:get/get.dart';
import 'package:price_management/src/infrastructure/route/route_path.dart';
import 'package:price_management/src/pages/add_todo_fee/common/add_todo_fee_binding.dart';
import 'package:price_management/src/pages/add_todo_fee/view/add_todo_fee_screen.dart';
import 'package:price_management/src/pages/home/common/home_binding.dart';
import 'package:price_management/src/pages/home/view/home_screeen.dart';
import 'package:price_management/src/pages/splash/common/splash_binding.dart';
import 'package:price_management/src/pages/splash/view/splash_screen.dart';
import 'package:price_management/src/pages/todo_fee_details/common/todo_fee_details_binding.dart';
import 'package:price_management/src/pages/todo_fee_details/view/todo_fee_details_screen.dart';

class RoutePage {
  static List<GetPage> pages = [
    GetPage(
        name: RoutePath.splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: RoutePath.home,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: RoutePath.addTodoFee,
            page: () => AddTodoFeeScreen(),
            binding: AddTodoFeeBinding(),
          ),
          GetPage(
            name: RoutePath.addTodoFeeDetails,
            page: () => TodoFeeDetailsScreen(),
            binding: TodoFeeDetailsBinding(),
          )
        ])
  ];
}
