import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.destructiveRed,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.grey[900]),
                child: Text(
                  'Navegar => 2.1',
                  style: TextStyle(
                    color: CupertinoColors.destructiveRed,
                  ),
                ),
                onPressed: () {
                  Modular.to.pushNamed('page1/subpage2', forRoot: true);
                }),
          ],
        ),
      ),
    );
  }
}
