import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:price_management/src/infrastructure/widgets/general_appbar.dart';
import 'package:price_management/src/pages/todo_fee_details/controller/todo_fee_details_controller.dart';
import 'package:price_management/src/pages/todo_fee_details/view/widget/sub_item.dart';
class TodoFeeDetailsScreen extends GetView<TodoFeeDetailsController> {
  const TodoFeeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: GeneralAppBar(
            title: 'todo fee details',
          ),
        ),
        body: Obx(()=>ListView.separated(
          itemBuilder: (_,index)=>SubItem(item: controller.subList[index]),
          itemCount: controller.subList.length,
          separatorBuilder: (_,__)=>Divider(color: Colors.grey.shade200,),
        )),
      );
}
