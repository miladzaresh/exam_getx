import 'package:http/http.dart' as http;

import '../../home/model/todo_view_model.dart';
import 'dart:convert';
class  PostDetailsRepository{
  Future<TodoViewMode?>  getTodos(String id)async{
    try{
      final respose=await http.get(Uri.https('jsonplaceholder.typicode.com','/posts/$id'));
      final body=jsonDecode(respose.body);
      return TodoViewMode.fromJson(body);
    }catch (e){
      print('asd');
    }
    return null;
  }
}