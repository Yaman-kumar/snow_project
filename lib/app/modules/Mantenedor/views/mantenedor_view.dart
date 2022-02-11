import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mantenedor_controller.dart';

class MantenedorView extends GetView<MantenedorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          'MantenedorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
