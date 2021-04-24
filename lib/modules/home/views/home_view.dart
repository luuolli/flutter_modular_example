import 'package:ModularApp/app/app.dart';
import 'package:ModularApp/modules/game/games_module.dart';
import 'package:ModularApp/modules/game/games_page.dart';
import 'package:ModularApp/modules/home/home.dart';
import 'package:ModularApp/modules/tournament/tournaments_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:ModularApp/modules/pages/pages.dart'
    show Page1Module, Page2Module, Page3Module;
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 1);
    return CupertinoPageScaffold(
      child: PageView(
        controller: pageController,
        children: [
          Container(),
          CupertinoTabScaffold(
              tabBar: CupertinoTabBar(
                border: Border(),
                inactiveColor: AppColors.inactive,
                activeColor: AppColors.active,
                backgroundColor: CupertinoColors.white,
                iconSize: 22,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.game_controller)),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
                  BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
                ],
              ),
              tabBuilder: (_, index) {
                return views[index];
              }),
          Container(),
        ],
      ),
    );
  }
}

final List<Widget> views = [
  GamesPage(),
  TournamentsPage(),
  Page2Module(),
  Page3Module(),
];

HomeModule get getHomeModule => Modular.initialModule.routes
    .firstWhere((element) => element.module is HomeModule)
    .module as HomeModule;

GamesModule get getGamesModule => getHomeModule.routes[0].children
    .firstWhere((element) => element.module is GamesModule)
    .module as GamesModule;
