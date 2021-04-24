import 'package:flutter_modular/flutter_modular.dart';
import 'tournament_page.dart';

// ignore: must_be_immutable
class TournamentModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:gameId',
      child: (context, args) => TournamentPage(
          tournamentId: int.tryParse(args.params['gameId']) ?? 0),
    ),
  ];

  @override
  List<Bind<Object>> get binds => [];
}
