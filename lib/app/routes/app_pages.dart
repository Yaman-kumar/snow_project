import 'package:get/get.dart';

import 'package:avanza/app/modules/Acceso/bindings/acceso_binding.dart';
import 'package:avanza/app/modules/Acceso/views/acceso_view.dart';
import 'package:avanza/app/modules/Mantenedor/bindings/mantenedor_binding.dart';
import 'package:avanza/app/modules/Mantenedor/views/mantenedor_view.dart';
import 'package:avanza/app/modules/home/bindings/home_binding.dart';
import 'package:avanza/app/modules/home/views/home_view.dart';
import 'package:avanza/layout.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOTROUTE;

  static final routes = [
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () => HomeView(),
    //   binding: HomeBinding(),
    // ),

    GetPage(
        name: _Paths.rootRoute,
        page: () {
          return SiteLayout();
        }),

    GetPage(
      name: _Paths.MANTENEDOR,
      page: () => MantenedorView(),
      binding: MantenedorBinding(),
    ),


    GetPage(
      name: _Paths.ACCESO,
      page: () => AccesoView(),
      binding: AccesoBinding(),
    ),
  ];
}
