import 'package:coding_chef_intro1_simple_state_manager/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller controller = Get.put(Controller());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<Controller>(
                init: Controller(),
                builder: (_) => Text(
                  'Current Value is: ${Get.find<Controller>().x}',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<Controller>().increment();
                },
                child: Text('Add number'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
