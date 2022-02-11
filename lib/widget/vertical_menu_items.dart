import 'package:avanza/app/controller_instance.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class VertticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const VertticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? Colors.grey
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!menuController.isActive(itemName))

                            Flexible(
                                child: Text(
                              "${itemName}",
                              style: TextStyle(
                                color: menuController.isHovering(itemName)
                                    ? Colors.black
                                    : Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ))
                          else
                            Flexible(
                                child: Text(
                              "${itemName}",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
