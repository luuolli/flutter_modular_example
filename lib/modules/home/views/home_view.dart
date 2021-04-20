import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: CupertinoColors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.pen)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.pen)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.pen)),
            ],
          ),
          tabBuilder: (_, index) {
            return views[index];
          }),
    );
  }
}

final List<Widget> views = [
  Container(color: CupertinoColors.activeGreen),
  Container(color: CupertinoColors.systemYellow),
  Container(color: CupertinoColors.systemRed),
];
