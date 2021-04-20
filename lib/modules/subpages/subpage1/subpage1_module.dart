import 'package:flutter_modular/flutter_modular.dart';
import 'subpage1.dart';

// ignore: must_be_immutable
class SubPage1Module extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (context, args) => SubPage1Page())
  ];

  @override
  List<Bind<Object>> get binds => [
        BindInject((i) => SubPage1Controller()),
      ];
}
