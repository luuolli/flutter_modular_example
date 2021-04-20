import 'package:ModularApp/modules/pages/pages.dart';
import 'package:ModularApp/modules/subpages/subpages.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ModularApp/app/app.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setSystemChromeStyle();

    return CupertinoApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/home',
      theme: CupertinoTheme.of(context).copyWith(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        barBackgroundColor: Colors.transparent,
        scaffoldBackgroundColor: Color(0xFFE3E3E3),
      ),
      onUnknownRoute: (settings) {
        return CupertinoPageRoute(builder: (_) {
          return Container(
            color: Colors.red,
            child: Center(
              child: Text('Rota não disponível'),
            ),
          );
        });
      },
    ).modular();
  }
}

void setSystemChromeStyle() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: CupertinoColors.systemGrey,
  ));

  SystemChrome.setEnabledSystemUIOverlays([]);
}
