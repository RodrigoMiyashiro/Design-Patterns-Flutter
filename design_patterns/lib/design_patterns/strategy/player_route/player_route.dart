import 'package:design_patterns/design_patterns/strategy/player/playable.dart';
import 'package:design_patterns/design_patterns/strategy/model/context.dart';
import 'package:design_patterns/design_patterns/strategy/player/player_routable.dart';

class PlayerRoute implements PlayerRoutable {
  @override
  Playable player;

  PlayerRoute({this.player});

  @override
  void executePlayer({Context context}) {
    if (player == null) return;

    player.execute(context: context);
  }
}
