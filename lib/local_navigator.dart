
import 'package:avanza/app/controller_instance.dart';
import 'package:avanza/app/routes/app_pages.dart';
import 'package:avanza/app/routes/generateroutes.dart';
import 'package:flutter/cupertino.dart';



Navigator localNavigator() => Navigator(
  key: navigationController.navigatorKey,
  onGenerateRoute: generateRoute,
  initialRoute: Routes.HOME,
);