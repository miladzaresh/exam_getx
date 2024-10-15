import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:price_management/src/pages/home/model/todo_view_model.dart';
import 'package:price_management/src/pages/post_detsilas/repository/post_details_repository.dart';

class PostDetailsController extends GetxController{
  Rxn<TodoViewMode> todoFee=Rxn();
  RxBool isTry=false.obs,isLoading=true.obs;
  final PostDetailsRepository repository=PostDetailsRepository();

  final String postId;

  PostDetailsController({required this.postId});

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTodos(postId);
  }
  Future<void> getTodos(String id)async{
    isLoading.value=true;
    final TodoViewMode? response=await repository.getTodos(id);
    if(response != null){
      isLoading.value=false;
      isTry.value=false;
      todoFee.value=response;
    }else{
      isLoading.value=false;
      isTry.value=true;
    }
  }

}