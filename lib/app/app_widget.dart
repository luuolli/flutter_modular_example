import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/',
      theme: CupertinoTheme.of(context).copyWith(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.white,
        barBackgroundColor: Colors.transparent,
      ),
      onUnknownRoute: (settings) {
        return CupertinoPageRoute(builder: (_) {
          return Container(
            child: Center(
              child: Text('Rota não disponível'),
            ),
          );
        });
      },
    ).modular();
  }
}
