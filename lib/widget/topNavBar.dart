import 'package:avanza/web_responsiveness.dart';
import 'package:flutter/material.dart';


AppBar topNavigationBar(BuildContext context,  GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context) ? Row(
        children: [

        ],
      ) : IconButton(icon: Icon(Icons.menu), onPressed: (){
        key.currentState?.openDrawer();
      }),
      title: Container(
        child: Row(
          children: [
            Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: Text( "Dash", style: TextStyle(
                    color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                  )
            ),

            SizedBox(width: 24,),

            SizedBox(width: 16,),

          ],
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );