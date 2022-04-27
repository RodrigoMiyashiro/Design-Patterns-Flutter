import 'package:design_patterns/design_patterns/strategy/model/context.dart';
import 'package:design_patterns/design_patterns/strategy/player/playable.dart';

abstract class PlayerRoutable {
  Playable player;

  void executePlayer({Context context});
}
