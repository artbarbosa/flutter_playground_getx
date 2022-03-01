import 'package:flutter_playground_getx/app/core/repository/todo_repository.dart';
import 'package:flutter_playground_getx/app/core/repository/todo_repository_interface.dart';
import 'package:flutter_playground_getx/app/core/services/client_http_service.dart';
import 'package:flutter_playground_getx/app/core/services/get_connect_client_service.dart';
import 'package:flutter_playground_getx/app/features/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<IRestClient>(GetConnectClientService());
    Get.put<ITodoRepository>(TodoRepository(resttHttp: Get.find()));
    Get.lazyPut(() => HomeController(repository: Get.find()));
  }
}
