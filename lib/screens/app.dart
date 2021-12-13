import 'package:better_draft/screens/champ_select/champ_select.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BETTER DRAFT',
      initialRoute: '/champ-select',
      routes: {
        '/champ-select': (context) => const ChampSelect(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
