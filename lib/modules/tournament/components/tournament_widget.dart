import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TournamentWidget extends StatelessWidget {
  final int index;
  TournamentWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: Colors.grey[900]),
        child: Text('Torneio => $index'),
        onPressed: () {
          Modular.to
              .pushNamed('/home/tournament/$index', forRoot: true)
              .catchError(print);
        });
  }
}
