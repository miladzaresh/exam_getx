import 'package:get/get.dart';
import 'package:price_management/src/pages/home/model/todo_fee.dart';

import '../../../infrastructure/db/mock_database.dart';
class TodoFeeDetailsController extends GetxController{
  final int categoryId;


  TodoFeeDetailsController({required this.categoryId});

  RxList<SubTodoFee> subList=RxList();


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    int index=MockDatabase.todoFees.indexWhere((element) => element.id==categoryId);
    if(index != -1){
      subList.addAll(MockDatabase.todoFees[index].subs);

    }
  }
}