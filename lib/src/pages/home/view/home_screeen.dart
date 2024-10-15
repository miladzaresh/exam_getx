import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:price_management/src/infrastructure/widgets/empty_widget.dart';
import 'package:price_management/src/infrastructure/widgets/general_appbar.dart';
import 'package:price_management/src/pages/home/controller/home_controller.dart';
import 'package:price_management/src/pages/home/view/widget/home_item.dart';
import 'package:price_management/src/pages/shared/widget/todo_step.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Obx(() => buildBody()),
      );

  Widget buildBody(){
    if(controller.isLoading.value){
      return Center(child: CircularProgressIndicator(),);
    }else if(controller.isTry.value ){
      return Center(child: RawMaterialButton(
        onPressed: (){
          controller.getTodos();
        },child:Text('try again'),
      ),);
    }
    return ListView.builder(
      itemBuilder: (context, index) =>
          TodoStep(viewMode: controller.todoFee[index],isDetails: false,),
      itemCount: controller.todoFee.length,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
    );
  }
//
// @override
// Widget build(BuildContext context) =>
//     Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//         child: GeneralAppBar(
//           title: 'Home',
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: controller.goToAddItem,
//       ),
//       body: Obx(() =>
//       controller.todoFee.isEmpty
//           ? EmptyWidget(title: 'items is not found')
//           : ListView.separated(
//         itemCount: controller.todoFee.length,
//         itemBuilder: (_, index) =>
//             HomeItem(item: controller.todoFee[index]),
//         separatorBuilder: (_, __) =>
//             Divider(
//               color: Colors.grey.shade300,
//             ),
//       )),
//       bottomNavigationBar:Obx(
//           ()=> Container(
//             color: Colors.grey.shade200,
//             padding: EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'total price',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black
//                   ),
//                 ),
//                 Text(
//                   '${controller.totalPrice.value} toman',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.black
//                   ),
//                 )
//               ],
//             ),
//           )
//       ),
//     );
}
