import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'page1.dart';
import 'package:ModularApp/modules/subpages/subpages.dart';

// ignore: must_be_immutable
class Page1Module extends WidgetModule {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute('subpage1', module: SubPage1Module()),
    ModuleRoute('subpage2', module: SubPage1Module()),
  ];

  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => Page1Controller(value: 1)),
      ];

  @override
  Widget get view => Page1Page(page1module: Page1Module());
}
