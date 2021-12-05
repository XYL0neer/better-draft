import 'package:better_draft/models/champion.dart';
import 'package:better_draft/services/champion_service.dart';
import 'package:flutter/material.dart';

class ChampionGrid extends StatefulWidget {
  const ChampionGrid({Key? key}) : super(key: key);

  @override
  _ChampionGridState createState() => _ChampionGridState();
}

class _ChampionGridState extends State<ChampionGrid> {
  ChampionService championService = ChampionService();
  int _selectedChampion = -1;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: championService.loadChampions(),
      builder: (context, AsyncSnapshot<List<Champion>?> snapshot) {
        if (snapshot.hasData) {
          List<Champion> champions = snapshot.data!;
          List<Widget> championImages = <Widget>[];
          for (var index = 0; index < champions.length; index++) {
            championImages.add(
              RawMaterialButton(
                mouseCursor: MaterialStateMouseCursor.clickable,
                onPressed: () => setState(() {
                  _selectedChampion = index;
                }),
                child: Image(
                  image: AssetImage(champions[index].image),
                ),
                shape: Border.all(
                  width: 4,
                  color: _selectedChampion == index
                      ? Colors.yellowAccent
                      : Colors.black54,
                ),
              ),
            );
          }
          return LayoutBuilder(
            builder: (context, constraints) {
              return GridView.count(
                crossAxisCount: constraints.maxWidth ~/ 80 > 1
                    ? constraints.maxWidth ~/ 80
                    : 1,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                padding: const EdgeInsets.all(16.0),
                children: championImages,
              );
            },
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
