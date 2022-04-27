import 'package:design_patterns/design_patterns/strategy/model/content.dart';
import 'package:design_patterns/design_patterns/strategy/model/context.dart';

abstract class Playable {
  Content content;

  void execute({Context context});
}
