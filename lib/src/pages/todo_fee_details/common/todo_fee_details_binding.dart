import 'package:get/get.dart';

import '../controller/todo_fee_details_controller.dart';

class TodoFeeDetailsBinding extends Bindings{
  @override
  void dependencies() {
    int id=0;
    final Map<String,String?> parameter=Get.parameters;
    if(parameter != null){
      id=int.tryParse(parameter['id']??'')??0;
    }
    Get.lazyPut(() => TodoFeeDetailsController(categoryId: id));
  }
}