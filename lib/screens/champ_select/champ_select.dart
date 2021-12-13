import 'package:better_draft/widgets/champion_grid/champion_grid.dart';
import 'package:flutter/material.dart';

class ChampSelect extends StatelessWidget {
  const ChampSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Champion Select'),
      ),
      body: const ChampionGrid(),
    );
  }
}
