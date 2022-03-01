import 'package:flutter_playground_getx/app/core/repository/todo_repository_interface.dart';
import 'package:get/get.dart';

import '../../../core/model/todo_model.dart';

class HomeController extends GetxController {
  final ITodoRepository repository;
  HomeController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    getList();
  }

  final list = <TodoModel>[].obs;

  getList() async => list.value = await repository.getAll();
}
