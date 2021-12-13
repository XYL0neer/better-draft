import 'package:better_draft/models/champion/counter.dart';
import 'package:better_draft/models/champion/roles.dart';
import 'package:better_draft/models/champion/tags.dart';

class Champion {
  String id;
  String image;
  List<Roles> roles;
  List<Tags> tags;
  List<Counter> counters;
  List<Counter> counteredBy;

  Champion({
    required this.id,
    required this.image,
    required this.roles,
    required this.tags,
    required this.counters,
    required this.counteredBy,
  });

  factory Champion.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonRoles = json["roles"];
    List<dynamic> jsonTags = json["tags"];
    List<dynamic> jsonCounters = json["counters"];
    List<dynamic> jsonCounteredBy = json["counteredBy"];

    return Champion(
      id: json["id"],
      image: json["image"],
      roles: jsonRoles
          .map((dynamic stringRole) => Roles.values.firstWhere(
              (role) => role.toString() == 'Roles.' + stringRole.toLowerCase()))
          .toList(),
      tags: jsonTags
          .map((dynamic stringTag) => Tags.values.firstWhere(
              (tag) => tag.toString() == 'Tags.' + stringTag.toLowerCase()))
          .toList(),
      counters: jsonCounters.isNotEmpty
          ? jsonCounters.map((e) => Counter.fromJson(e)).toList()
          : <Counter>[],
      counteredBy: jsonCounters.isNotEmpty
          ? jsonCounteredBy.map((e) => Counter.fromJson(e)).toList()
          : <Counter>[],
    );
  }
}
