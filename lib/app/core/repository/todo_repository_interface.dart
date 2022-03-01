import 'package:flutter_playground_getx/app/core/model/todo_model.dart';

abstract class ITodoRepository {
  Future<List<TodoModel>> getAll();
}
