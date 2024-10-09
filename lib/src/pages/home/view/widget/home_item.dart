import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:price_management/src/pages/home/controller/home_controller.dart';
import 'package:price_management/src/pages/home/model/todo_fee.dart';

class HomeItem extends GetView<HomeController> {
  final TodoFee item;
  HomeItem({required this.item});

  @override
  Widget build(BuildContext context) =>
      Container(
        child: ListTile(
          title: Text(
            item.title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black
            ),
          ),
          subtitle: Text(
            item.price,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade700
            ),
          ),
          trailing: Icon(Icons.keyboard_arrow_right_outlined,size: 24,color: Colors.grey.shade700,),
          leading: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(8)
            ),
          ),
          onTap:(){
            controller.goToDetails(item.id);
          },
        ),
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8)
        ),
      );
}
