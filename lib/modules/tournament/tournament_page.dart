import 'package:flutter/cupertino.dart';

class TournamentPage extends StatelessWidget {
  final int tournamentId;
  TournamentPage({required this.tournamentId});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Detalhe do torneio'),
        ),
        child: Center(
          child: Text('Jogo de id => $tournamentId'),
        ));
  }
}
