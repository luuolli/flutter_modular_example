import 'package:ModularApp/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: App(),
    ),
  );
}
