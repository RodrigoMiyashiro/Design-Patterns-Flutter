import 'package:design_patterns/Error/throw_exception.dart';
import 'package:design_patterns/design_patterns/abstract_factory/abstract_gui_factory.dart';
import 'package:design_patterns/design_patterns/abstract_factory/gui.dart';
import 'package:design_patterns/design_patterns/abstract_factory/view.dart';

class GUIBuilder implements GUI {
  AbstractGUIFactory _guiFactory;

  GUIBuilder({AbstractGUIFactory guiFactory}) : _guiFactory = guiFactory;

  @override
  View buildButton() {
    if (_guiFactory == null) {
      throw ThrowException(description: 'Button can not be created...');
    }

    return _guiFactory.createButton();
  }

  @override
  View buildWindow() {
    if (_guiFactory == null) {
      throw ThrowException(description: 'Window can not be created...');
    }

    return _guiFactory.createWindow();
  }
}
