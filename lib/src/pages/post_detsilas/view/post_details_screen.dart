import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:price_management/src/pages/post_detsilas/controller/post_details_controller.dart';
import 'package:price_management/src/pages/shared/widget/todo_step.dart';

class PostDetailsScreen extends GetView<PostDetailsController> {
  const PostDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Obx(() => buildBody()),
      );

  Widget buildBody() {
    if (controller.isLoading.value) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (controller.isTry.value) {
      return buildTry();
    }
    return controller.todoFee.value == null
        ? buildTry()
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TodoStep(
              viewMode: controller.todoFee.value!,
              isDetails: true,
            ),
          );
  }

  Widget buildTry() {
    return Center(
      child: RawMaterialButton(
        onPressed: () {
          controller.getTodos(controller.postId);
        },
        child: Text('try again'),
      ),
    );
  }
}
