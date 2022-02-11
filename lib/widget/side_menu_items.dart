import 'package:avanza/web_responsiveness.dart';
import 'package:avanza/widget/horizontal_menu_items.dart';
import 'package:avanza/widget/vertical_menu_items.dart';
import 'package:flutter/material.dart';



class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const SideMenuItem({ Key? key,required this.itemName,required this.onTap }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    if(ResponsiveWidget.isCustomSize(context)){
      return VertticalMenuItem(itemName: itemName,  onTap: onTap,);
    }else{
      return HorizontalMenuItem(itemName: itemName, onTap: onTap,);
    }
  }
}