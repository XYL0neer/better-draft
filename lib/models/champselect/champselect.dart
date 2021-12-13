import 'package:better_draft/models/champion/champion.dart';
import 'package:better_draft/models/champselect/draft_type.dart';

class ChampSelect {
  final DraftType draftType;
  final List<Champion?> bluePicks = List.filled(5, null);
  final List<Champion?> redPicks = List.filled(5, null);
  List<Champion?> blueBans = List.empty();
  List<Champion?> redBans = List.empty();

  ///Creates a instance of [ChampSelect] for a specified [draftType].
  ///The [draftType] will determine the number of bans.
  ///For the [draftType] draft and competitive there will be 5 bans per Team in any other [draftType] there will be no Bans.
  ///Each Team will have in any [draftType] 5 picks.
  ChampSelect({
    required this.draftType,
  }) {
    switch (draftType) {
      case DraftType.draft:
      case DraftType.competitive:
        blueBans = List.filled(5, null);
        break;
      case DraftType.blind:
      case DraftType.random:
      default:
        blueBans = List.empty();
        break;
    }
  }
}
