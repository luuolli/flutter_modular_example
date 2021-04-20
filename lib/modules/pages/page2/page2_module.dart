import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'page2.dart';

// ignore: must_be_immutable
class Page2Module extends WidgetModule {
  @override
  List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => Page2Page())
  ];

  @override
  List<Bind<Object>> get binds => [
        BindInject((i) => Page2Controller(), isLazy: false),
      ];

  @override
  Widget get view => Page2Page();
}
