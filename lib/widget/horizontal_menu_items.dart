import 'package:avanza/Utils/colors.dart';
import 'package:avanza/app/controller_instance.dart';
import 'package:avanza/responsiveness.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const HorizontalMenuItem({ Key? key,required this.itemName,required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: onTap,
        onHover: (value){
          value ?
          menuController.onHover(itemName) : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
          //color: menuController.isHovering(itemName) ? Colors.grey : Colors.transparent,
          child: Row(
            children: [
              // Visibility(
              //   visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
              //   maintainSize: true,
              //   maintainAnimation: true,
              //   maintainState: true,
              //   child: Container(
              //     width: 9,
              //     height: 40,
              //     color: Colors.red,
              //   ),
              // ),


              if(!menuController.isActive(itemName))
                Container(
                  width: 180,
                  height: 60.kh,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.only(
                  //     topRight: Radius.circular(50),
                  //     bottomRight:  Radius.circular(50),
                  //   ),
                  //   color: menuController.isHovering(itemName) || menuController.isActive(itemName) ? Colors.white:Colors.transparent ,
                  // ),

                  child: Center(
                    child: Text( "${itemName}" , style:

                    TextStyle(

                      fontFamily: 'Poppins-Regular.ttf',
                      fontSize: 20.kh,
                      color: menuController.isHovering(itemName) ? Colors.black : Colors.white,
                      fontWeight:  FontWeight.normal,

                    ),),
                  ),
                )
              else
                Container(
                  width: 230.kw,
                  height: 60.kh,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight:  Radius.circular(50),
                    ),
                    color: menuController.isHovering(itemName) || menuController.isActive(itemName) ? Color(0xffFFFFFF):Colors.transparent ,
                  ),
                  child: Center(
                    child: Text( "${itemName}" ,
                      style:
                      TextStyle(
                      fontFamily: 'Poppins-Regular.ttf',
                      color: Palette.cello,
                      fontSize: 17.kh,
                      fontWeight:  FontWeight.bold,
                    ),),
                  ),
                )

            ],
          ),
        ))
    );
  }
}