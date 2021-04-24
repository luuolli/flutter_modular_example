import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GameWidget extends StatelessWidget {
  final int index;
  GameWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.grey[900]),
        child: Text('Jogo => $index'),
        onPressed: () {
          Modular.to
              .pushNamed('/home/game/$index', forRoot: true)
              .catchError(print);
        });
  }
}
