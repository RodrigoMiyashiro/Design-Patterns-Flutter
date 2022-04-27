import 'package:design_patterns/design_patterns/abstract_factory/abstract_gui_factory.dart';
import 'package:design_patterns/design_patterns/abstract_factory/osx_button.dart';
import 'package:design_patterns/design_patterns/abstract_factory/osx_window.dart';
import 'package:design_patterns/design_patterns/abstract_factory/view.dart';

class OSXFactory implements AbstractGUIFactory {
  @override
  View createButton() {
    return OSXButton();
  }

  @override
  View createWindow() {
    return OSXWindow();
  }
}
