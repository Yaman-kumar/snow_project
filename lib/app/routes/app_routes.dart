part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();

  static const ROOTROUTE = _Paths.rootRoute;

  static const HOME = _Paths.HOME;

  static const MANTENEDOR = _Paths.MANTENEDOR;

  static const ACCESO = _Paths.ACCESO;
}

abstract class _Paths {
  static const rootRoute = '/';
  static const HOME = '/home';
  static const MANTENEDOR = '/mantenedor';
  static const ACCESO = '/acceso';
}

const HomeDisplayName = 'Home';
const MANTENEDORDisplayName = 'Mantenedor';
const ACCESO = "Acceso";

class MenuItem {
  final String name;
  final String route;
  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(HomeDisplayName, Routes.HOME),
  MenuItem(ACCESO, Routes.ACCESO),
];
