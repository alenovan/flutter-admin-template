import 'package:animations/animations.dart';
import 'package:belajar_admin/component/sidemenu/SideMenu.dart';
import 'package:belajar_admin/controller/MenuController.dart';
import 'package:belajar_admin/menu/Course.dart';
import 'package:belajar_admin/menu/Dashboard.dart';
import 'package:belajar_admin/menu/Task.dart';
import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _page = 0;
  final List<Widget> _tabItems = [
    Dashboard(),
    Course(),
    Task(),
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(
        onPageSelected: (num) {
          setState(() {
            _page = num;
          });

        },
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(
                  onPageSelected: (num) {
                    setState(() {
                      _page = num;
                    });


                  },
                ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 4,
              child: PageTransitionSwitcher(
                transitionBuilder: (Widget child,
                        Animation<double> primaryAnimation,
                        Animation<double> secondaryAnimation) =>
                    FadeThroughTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                ),
                child: Container(
                  child: _tabItems[_page],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
