import 'package:avanza/local_navigator.dart';
import 'package:avanza/web_responsiveness.dart';
import 'package:avanza/widget/large_screen.dart';
import 'package:avanza/widget/side_menu.dart';
import 'package:avanza/widget/topNavBar.dart';
import 'package:flutter/material.dart';





class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)? topNavigationBar(context, scaffoldKey) : null,
      drawer: ResponsiveWidget.isSmallScreen(context) ?Drawer(
        child: SideMenu(),
      ) : null,
      body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          )
      ),
    );
  }
}