import 'package:flutter/cupertino.dart';

class Page3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.destructiveRed,
      child: Center(
        child: Text('Página 3'),
      ),
    );
  }
}
