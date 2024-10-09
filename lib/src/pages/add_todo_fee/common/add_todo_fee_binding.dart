import 'package:get/get.dart';

import '../controller/add_todo_fee_controller.dart';
class AddTodoFeeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AddTodoFeeController());
  }
}