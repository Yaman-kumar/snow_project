import 'package:avanza/app/MenuController.dart';
import 'package:avanza/app/navigation_controller.dart';
import 'package:avanza/hasura/hasura_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

void main() async{
  await Get.putAsync<HasuraService>(() async => await HasuraService());
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(
    Sizer(
        builder: (context, orientation, deviceType){
        return GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              pageTransitionsTheme: PageTransitionsTheme(
                  builders: {
                    TargetPlatform.iOS:FadeUpwardsPageTransitionsBuilder(),
                    TargetPlatform.android:FadeUpwardsPageTransitionsBuilder(),
                  }
              )
          ),
        );
      }
    ),
  );
}
