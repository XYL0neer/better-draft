import 'dart:convert';

import 'package:better_draft/models/champion.dart';
import 'package:flutter/services.dart';

class ChampionService {
  Future<List<Champion>?> loadChampions() async {
    List<Champion>? championList;
    try {
      String data = await rootBundle.loadString("champion.json");
      final List<dynamic> jsonResult = jsonDecode(data);
      championList = jsonResult.map((entry) {
        print(entry["id"]);
        return Champion.fromJson(entry);
      }).toList();
    } catch (error) {
      print(error);
    }
    return championList;
  }
}
