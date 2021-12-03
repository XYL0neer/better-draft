import 'package:better_draft/screens/champ_select/champion_grid.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BETTER DRAFT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BETTER DRAFT'),
        ),
        body: const ChampionGrid(),
      ),
    );
  }
}
