import 'package:get/get.dart';
import 'package:price_management/src/pages/post_detsilas/controller/post_details_controller.dart';

class PostDetailsBinding extends Bindings{
  @override
  void dependencies() {
    var params=Get.parameters;
    String id='';
    if(params != null){
      id=params['id']??'';
    }

    Get.lazyPut(() => PostDetailsController(postId: id));
  }
}