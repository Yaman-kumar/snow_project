import 'package:avanza/app/modules/Acceso/views/acceso_view.dart';
import 'package:avanza/app/modules/Mantenedor/views/mantenedor_view.dart';
import 'package:avanza/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:avanza/app/routes/app_pages.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case Routes.HOME:
      return _getPageRoute(HomeView());
    case Routes.ACCESO:
      return _getPageRoute(AccesoView());
    default:
      return _getPageRoute(MantenedorView());
  }
}



PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder:(context) => child);
}