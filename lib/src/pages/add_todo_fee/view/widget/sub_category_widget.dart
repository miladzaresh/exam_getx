import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/widgets/general_textformField.dart';

class SubCategoryWidget extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController priceController;


  SubCategoryWidget({required this.titleController,required this.priceController});

  @override
  Widget build(BuildContext context) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          GeneralTextFormField(
            title: 'title',
            controller: titleController,
            type: TextInputType.text,
          ),
          SizedBox(height: 12,),
          GeneralTextFormField(
            controller: priceController,
            title: 'total price',
            type: TextInputType.number,
          ),
        ],
      );

}
