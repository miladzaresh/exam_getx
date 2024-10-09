import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:price_management/src/pages/add_todo_fee/model/model.dart';

class AddTodoFeeController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxList<SubCategoryController> subCategories=RxList<SubCategoryController>();

  String? validateTitle(String? val) {
    if (val == null) {
      return null;
    }
    if (val.isEmpty) {
      return 'title is required';
    }
    return null;
  }

  void addSubCategory(){
    subCategories.add(SubCategoryController());
  }
  String? validatePrice(String? val) {
    if (val == null) {
      return null;
    }
    if (val.isEmpty) {
      return 'price is required';
    }
    if (int.tryParse(val) == null) {
      return 'please enter number';
    }
    return null;
  }

  void submit() {
    if (formKey.currentState?.validate() ?? false) {
      List<Map<String,String>> subCategory=[];
      if(subCategories.isNotEmpty){
        subCategories.forEach((element) {
          subCategory.add({
            'title':element.titleController.text,
            'price':element.priceController.text,
          });
        });
      }
      Get.back(result: {
        'title': titleController.text,
        'price': priceController.text,
        'sub':subCategory
      });
    }
  }
}
