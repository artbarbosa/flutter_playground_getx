import 'package:flutter_playground_getx/app/core/consts/api_consts.dart';
import 'package:flutter_playground_getx/app/core/repository/todo_repository_interface.dart';
import 'package:flutter_playground_getx/app/core/services/client_http_service.dart';

import '../model/todo_model.dart';

class TodoRepository implements ITodoRepository {
  final IRestClient resttHttp;

  TodoRepository({required this.resttHttp});

  @override
  Future<List<TodoModel>> getAll() async {
      final List response = await resttHttp.getAll(ApiConsts.apiURL);
      return response.map((e) => TodoModel.fromJson(e)).toList() ;
  }
}
