// ignore_for_file: constant_identifier_names

enum Tags {
  assassin,
  fighter,
  mage,
  marksman,
  support,
  tank,
}

extension TagsExtension on Tags {
  static const values = {
    Tags.assassin: 'Assassin',
    Tags.fighter: 'Fighter',
    Tags.mage: 'Mage',
    Tags.marksman: 'Marksman',
    Tags.support: 'Support',
    Tags.tank: 'Tank,'
  };

  String? get value => values[this];
}
