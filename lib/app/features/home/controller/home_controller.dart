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

  insertModel() async => list.value = list
    ..insert(
      0,
      TodoModel(
        userId: 1,
        id: 1,
        title: 'asdasdqweqweqfasd',
        completed: false,
      ),
    );
}

//   with StateMixin<TodoModel>
// class HomePage2 extends StatelessWidget {
//   HomePage2({Key? key}) : super(key: key);

//   final HomeController controller2 = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: controller2.obx(
//       (state) => Text(state!.title),
//       onLoading: const CircularProgressIndicator(),
//       onEmpty: const Text('No data found'),
//       onError: ((error) => Text(error!)),
//     ));
//   }
// }
