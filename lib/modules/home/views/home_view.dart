import 'package:ModularApp/app/app.dart';
import 'package:flutter/cupertino.dart';

import 'package:ModularApp/modules/pages/pages.dart'
    show Page1Module, Page2Module, Page3Module;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            border: Border(),
            inactiveColor: AppColors.inactive,
            activeColor: AppColors.active,
            backgroundColor: CupertinoColors.white,
            iconSize: 22,
            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
            ],
          ),
          tabBuilder: (_, index) {
            return views[index];
          }),
    );
  }
}

final List<Widget> views = [
  Page1Module()..instance(),
  Page2Module(),
  Page3Module(),
];
