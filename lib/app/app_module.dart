import 'package:ModularApp/app/app.dart';
import 'package:ModularApp/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
  ];

  @override
  List<Bind<Object>> get binds => [
        Bind((i) => AppController()),
      ];
}
