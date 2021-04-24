import 'package:flutter_modular/flutter_modular.dart';
import 'game_page.dart';

// ignore: must_be_immutable
class GameModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:gameId',
      child: (context, args) =>
          GamePage(gameId: int.tryParse(args.params['gameId']) ?? 0),
    ),
  ];

  @override
  List<Bind<Object>> get binds => [];
}
