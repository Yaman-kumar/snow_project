import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/acceso_controller.dart';

class AccesoView extends GetView<AccesoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          'AccesoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
