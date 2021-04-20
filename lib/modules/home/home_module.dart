import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ModularApp/modules/home/home.dart';

class HomeModule extends WidgetModule {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
  ];

  @override
  List<Bind<Object>> get binds => [];

  @override
  Widget get view => HomePage();
}
