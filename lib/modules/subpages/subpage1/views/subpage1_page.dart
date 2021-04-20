import 'package:ModularApp/modules/subpages/subpages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SubPage1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    showInjectedController();
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          border: Border(),
          automaticallyImplyLeading: true,
          backgroundColor: CupertinoColors.black.withOpacity(0.0),
        ),
        backgroundColor: CupertinoColors.activeBlue.withOpacity(0.8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('1.1'),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                ),
                child: Text('Navegar => 1.1.1'),
                onPressed: () {
                  Modular.to.pushNamed('../subpage1/', forRoot: true);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

void showInjectedController() {
  try {
    print(Modular.get<SubPage1Controller>());
  } catch (e) {
    print(e);
  }
}
