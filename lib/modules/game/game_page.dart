import 'package:ModularApp/modules/tournament/components/tournament_widget.dart';
import 'package:flutter/cupertino.dart';

class GamePage extends StatelessWidget {
  final int gameId;
  GamePage({required this.gameId});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Detalhe do jogo'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Jogo de id => $gameId'),
              TournamentWidget(index: gameId),
            ],
          ),
        ));
  }
}
