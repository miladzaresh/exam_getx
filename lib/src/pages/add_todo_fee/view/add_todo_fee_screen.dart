import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:price_management/src/infrastructure/widgets/general_appbar.dart';
import 'package:price_management/src/infrastructure/widgets/general_buttn.dart';
import 'package:price_management/src/infrastructure/widgets/general_textformField.dart';
import 'package:price_management/src/pages/add_todo_fee/view/widget/sub_category_widget.dart';

import '../controller/add_todo_fee_controller.dart';

class AddTodoFeeScreen extends GetView<AddTodoFeeController> {
  const AddTodoFeeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: GeneralAppBar(
            title: 'Add Todo Fee',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'category',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(height: 8,),
                  GeneralTextFormField(
                    title: 'title',
                    controller: controller.titleController,
                    type: TextInputType.text,
                    onValidator: controller.validateTitle,
                  ),
                  SizedBox(height: 12,),
                  GeneralTextFormField(
                    title: 'total price',
                    controller: controller.priceController,
                    type: TextInputType.number,
                    onValidator: controller.validatePrice,
                  ),
                  SizedBox(height: 24,),
                  Text(
                    'sub category',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 8,),
                  // Obx((){
                  //   for(var item in controller.subCategories){
                  //     return SubCategoryWidget(titleController: item.titleController, priceController: item.priceController);
                  //   }
                  //   return SizedBox();
                  // }),
                  Obx(() => ListView.builder(
                    itemBuilder: (_,index)=>SubCategoryWidget(titleController: controller.subCategories[index].titleController, priceController: controller.subCategories[index].priceController),
                    itemCount: controller.subCategories.length,
                    shrinkWrap: true,
                  )),
                  IconButton(onPressed:controller.addSubCategory, icon: Icon(Icons.add,color: Colors.black,size: 24,)),

                ],
              ),
            ),
          ),
        ),
    bottomNavigationBar: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: GeneralButton(
        onPress: controller.submit,
        title: 'add todo',
      ),
    ),
      );
}
