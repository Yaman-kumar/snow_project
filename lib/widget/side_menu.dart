import 'package:avanza/app/controller_instance.dart';
import 'package:avanza/app/routes/app_pages.dart';
import 'package:avanza/responsiveness.dart';
import 'package:avanza/web_responsiveness.dart';
import 'package:avanza/widget/side_menu_items.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(

      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [

            Color(0xFFF9A617),
            Color(0xFFDE2D1F),
            Color(0xFF203461),
            Color(0xFF123466),
                ]
        //   #387CFF 0%, #A953FF 99.79%);
      ),
    ),
      child: Column(
        children: [
          SizedBox(height: 40.kh,),
          Image(
              height: 83.kh,
              width: 198.kw,
              image: AssetImage(
            "assets/images/GradientLogo.png"
          )),

          SizedBox(height: 40.kh,),
          Flexible(
            child: ListView(
              children: [
                // if(ResponsiveWidget.isSmallScreen(context))
                //   Column(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //     ],
                //   ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                  sideMenuItemRoutes.map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        // if(item.route == Routes.MANTENEDOR){
                        //   Get.offAllNamed(Routes.MANTENEDOR);
                        //   menuController.changeActiveItemTo(Routes.HOME);
                        // }
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItemTo(item.name);
                          if(ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                        }
                      })).toList(),
                )
              ],
            ),
          ),
          Spacer(),

          Container(
            height: 80.kh,
            width: 80.kw,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFE5521E),
                    Color(0xFFC72E28),
                  ]
                //   #387CFF 0%, #A953FF 99.79%);

              ),
              shape: BoxShape.circle,

            ),

          ),
          SizedBox(
            height: 56.kh,
          ),
        ],
      ),
    );
  }
}