import 'package:get/get.dart';

import '../controllers/acceso_controller.dart';

class AccesoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccesoController>(
      () => AccesoController(),
    );
  }
}
