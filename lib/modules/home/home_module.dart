// ignore: implementation_imports
import 'package:ModularApp/modules/game/game_module.dart';
import 'package:ModularApp/modules/game/games_module.dart';
import 'package:ModularApp/modules/tournament/tournament_module.dart';
import 'package:ModularApp/modules/tournament/tournaments_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ModularApp/modules/home/home.dart';
import 'package:ModularApp/modules/pages/pages.dart';

class HomeModule extends WidgetModule {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage(), children: [
      ModuleRoute('/game', module: GameModule()),
      ModuleRoute('/tournament', module: TournamentModule()),
      ModuleRoute('/page1', module: Page1Module()),
      ModuleRoute('/torneio', module: Page2Module()),
    ]),
  ];

  @override
  List<Bind<Object>> get binds => [
        // Bind((i) => Page1Controller()),
      ];

  @override
  Widget get view => HomePage();
}
