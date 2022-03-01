import 'package:flutter/material.dart';
import 'package:flutter_playground_getx/app/features/home/controller/home_controller.dart';
import 'package:get/get.dart';

// GetView<HomeController>
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Teste'),
      ),
      body: SizedBox(
        child: Obx(
          () => ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (context, index) => ListTile(
                title: Text(
              controller.list[index].title,
            )),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.insertModel;
        },
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
