import 'dart:math';

import 'package:get/get.dart';
import 'package:price_management/src/infrastructure/db/mock_database.dart';
import 'package:price_management/src/infrastructure/route/route_name.dart';
import 'package:price_management/src/pages/home/model/todo_view_model.dart';
import 'package:price_management/src/pages/home/repositories/todo_repository.dart';

import '../model/todo_fee.dart';

// class HomeController extends GetxController {
//   RxList<TodoFee> todoFee = MockDatabase.todoFees.obs;
//
//   RxInt totalPrice = 0.obs;
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     calculatorTotalPrice();
//   }
//
//   void goToAddItem() async {
//     final backResult = await Get.toNamed(RouteName.addTodoFee);
//     print('///////$backResult');
//     if (backResult != null) {
//       todoFee.add(
//         TodoFee(
//             title: backResult['title'] ?? '',
//             price: backResult['price'] ?? '',
//             subs: backResult['sub']==null?[]:List<SubTodoFee>.from(backResult['sub'].map((item)=>SubTodoFee(title: item['title'], price: item['price'], id: Random(10000).nextInt(10000)))),
//             id: Random(10000).nextInt(10000)),
//       );
//       MockDatabase.todoFees.add(
//         TodoFee(
//             title: backResult['title'] ?? '',
//             price: backResult['price'] ?? '',
//             subs: backResult['sub']==null?[]:List<SubTodoFee>.from(backResult['sub'].map((item)=>SubTodoFee(title: item['title'], price: item['price'], id: Random(10000).nextInt(10000)))),
//             id: Random(10000).nextInt(10000)),
//       );
//       calculatorTotalPrice();
//     }
//   }
//   void goToDetails(int id) {
//     Get.toNamed(RouteName.addTodoFeeDetails,parameters: {'id':id.toString()});
//   }
//
//   void calculatorTotalPrice() {
//     int sum = 0;
//     for (var value in todoFee) {
//       int? price = int.tryParse(value.price);
//       if (price != null) {
//         sum += price;
//       }
//     }
//     totalPrice.value = sum;
//   }
// }
class HomeController extends GetxController {
  RxList<TodoViewMode> todoFee =RxList();

  RxBool isTry=false.obs,isLoading=true.obs;
  final TodoRepository repository=TodoRepository();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTodos();
  }
  Future<void> getTodos()async{
    isLoading.value=true;
    final List<TodoViewMode>? response=await repository.getTodos();
    if(response != null){
      isLoading.value=false;
      isTry.value=false;
      todoFee.addAll(response);
    }else{
      isLoading.value=false;
      isTry.value=true;
    }
  }

  void gotoDetails(int postId){
    Get.toNamed(RouteName.postDetails,parameters: {'id':postId.toString()});

  }

}
