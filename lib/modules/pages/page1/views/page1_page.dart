import 'package:ModularApp/modules/pages/page1/controllers/page1_controller.dart';
import 'package:ModularApp/modules/pages/page1/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Page1Page extends StatelessWidget {
  ///Injeção de dependência do modulo a ser ultilizado
  final Page1Module? page1module;
  Page1Page({Key? key, this.page1module}) : super(key: key) {
    page1module?.instance();
  }

  @override
  Widget build(BuildContext context) {
    showInjectedController(this.page1module);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeBlue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[900]),
                child: Text('Navegar => 1.1'),
                onPressed: () {
                  Modular.to.pushNamed('jogo/subpage1', forRoot: true);
                }),
          ],
        ),
      ),
    );
  }
}

void showInjectedController(Page1Module? module) {
  try {
    print(module?.getBind<Page1Controller>());
  } catch (e) {
    print(e);
  }
}
