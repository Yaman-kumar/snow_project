import 'package:get/get.dart';

import '../controllers/mantenedor_controller.dart';

class MantenedorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MantenedorController>(
      () => MantenedorController(),
    );
  }
}
