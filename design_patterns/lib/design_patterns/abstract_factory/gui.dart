import 'package:design_patterns/design_patterns/abstract_factory/view.dart';

abstract class GUI {
  View buildButton();
  View buildWindow();
}
