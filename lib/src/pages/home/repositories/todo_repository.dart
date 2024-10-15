import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:price_management/src/pages/home/model/todo_view_model.dart';

class TodoRepository{
  Future<List<TodoViewMode>?>  getTodos()async{
    try{
      final respose=await http.get(Uri.https('jsonplaceholder.typicode.com','/posts'));
      final body=jsonDecode(respose.body);
      return List<TodoViewMode>.from(body.map((item)=>TodoViewMode.fromJson(item)));

    }catch (e){
      print('asd');
    }
    return null;
  }
}