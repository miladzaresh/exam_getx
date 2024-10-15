import 'package:get/get.dart';
import 'package:price_management/src/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:price_management/src/pages/home/model/todo_view_model.dart';

class TodoStep extends GetView<HomeController> {
  final TodoViewMode viewMode;
  final bool isDetails;

  TodoStep({required this.viewMode, required this.isDetails});

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.shade100.withOpacity(0.5),
                  child: Text(
                    viewMode.id.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  radius: 35,
                ),
                FittedBox(
                  child: Container(
                    width: 10,
                    height: getHeight(context),
                    color: Colors.blue.shade100.withOpacity(0.5),
                  ),
                  fit: BoxFit.fitHeight,
                )
              ],
            ),
            // SizedBox(width: 8.w,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      viewMode.title,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Visibility(
                      child: Text(
                        viewMode.body,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      visible: isDetails,
                    ),
                  ],
                ),
              ),
              flex: 6,
            ),
          ],
        ),
        onTap: () {
          controller.gotoDetails(viewMode.id);
        },
      );

  double getHeight(context) {
    double height = 0;
    if(isDetails){
      if (MediaQuery.of(context).size.width < 450) {
        height = (viewMode.body.length + viewMode.title.length) / 3.5;
      } else {
        height = (viewMode.body.length + viewMode.title.length) / 3;
      }
    }else{
      if (MediaQuery.of(context).size.width < 450) {
        height = viewMode.title.length / 3.5;
      } else {
        height =  viewMode.title.length / 3;
      }
    }
    return height;
  }
}
