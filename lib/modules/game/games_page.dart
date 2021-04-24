import 'package:ModularApp/modules/game/components/game_widget.dart';
import 'package:ModularApp/modules/game/games_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GamesPage extends StatelessWidget {
  GamesModule _gamesModule = GamesModule();

  @override
  Widget build(BuildContext context) {
    try {
      print(Modular.get<TestBinds>());
    } on Exception catch (e) {
      print(e);
    }
    return CupertinoPageScaffold(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return GameWidget(index: index);
          }),
    );
  }
}
