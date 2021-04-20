import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'page3.dart';

// ignore: must_be_immutable
class Page3Module extends WidgetModule {
  @override
  List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => Page3Page())
  ];

  @override
  List<Bind<Object>> get binds => [];

  @override
  Widget get view => Page3Page();
}
