import 'package:ModularApp/modules/game/game_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

// ignore: must_be_immutable
class GamesModule extends Module {
  GamesModule() : super() {
    Modular.bindModule(this, 'global==');
  }
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('game/detail', module: GameModule()),
  ];

  @override
  List<Bind<Object>> get binds => [
        Bind((i) => TestBinds()),
        Bind((i) => TestBinds2()),
      ];
}

class TestBinds {
  TestBinds() {
    print('Funcionando o bind');
  }
}

class TestBinds2 {
  TestBinds2() {
    print('Funcionando o bind 2');
  }
}
