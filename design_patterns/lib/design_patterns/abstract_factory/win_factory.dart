import 'package:design_patterns/design_patterns/abstract_factory/abstract_gui_factory.dart';
import 'package:design_patterns/design_patterns/abstract_factory/view.dart';
import 'package:design_patterns/design_patterns/abstract_factory/win_button.dart';
import 'package:design_patterns/design_patterns/abstract_factory/win_window.dart';

class WinFactory implements AbstractGUIFactory {
  @override
  View createButton() {
    return WinButton();
  }

  @override
  View createWindow() {
    return WinWindow();
  }
}
