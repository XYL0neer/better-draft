enum Roles {
  top,
  jungle,
  mid,
  bottom,
  support,
}

extension RolesExtension on Roles {
  static const values = {
    Roles.top: 'Top',
    Roles.jungle: 'Jungle',
    Roles.mid: 'Mid',
    Roles.bottom: 'Bottom',
    Roles.support: 'Support',
  };

  String? get value => values[this];
}
