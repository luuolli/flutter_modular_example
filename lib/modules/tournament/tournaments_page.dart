import 'package:ModularApp/modules/tournament/components/tournament_widget.dart';
import 'package:ModularApp/modules/tournament/tournaments_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TournamentsPage extends StatelessWidget {
  TournamentsModule _tournamentsModule = TournamentsModule();

  @override
  Widget build(BuildContext context) {
    try {
      print(Modular.get<TestBinds>());
    } on Exception catch (e) {
      print(e);
    }
    return CupertinoPageScaffold(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return TournamentWidget(index: index);
          }),
    );
  }
}
