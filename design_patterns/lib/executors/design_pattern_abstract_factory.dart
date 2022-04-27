import 'package:design_patterns/Error/handle_exception.dart';
import 'package:design_patterns/design_patterns/abstract_factory/gui.dart';
import 'package:design_patterns/design_patterns/abstract_factory/gui_builder.dart';
import 'package:design_patterns/design_patterns/abstract_factory/osx_factory.dart';
import 'package:design_patterns/design_patterns/abstract_factory/win_factory.dart';
import 'package:flutter/material.dart';

class DesignPatternAbstractFactory {
  void execute() {
    final guiWindowBuilder = GUIBuilder(guiFactory: WinFactory());
    _createWindow(guiBuilder: guiWindowBuilder);
    _createButton(guiBuilder: guiWindowBuilder);

    final guiOSXBuilder = GUIBuilder(guiFactory: OSXFactory());
    _createWindow(guiBuilder: guiOSXBuilder);
    _createButton(guiBuilder: guiOSXBuilder);
  }

  void _createWindow({GUI guiBuilder}) {
    try {
      final window = guiBuilder.buildWindow();
      window.setTitle('Janelinha');
      window.show();
    } on HandleException catch (error) {
      debugPrint('Error [create window]: ${error.description}');
    }
  }

  void _createButton({GUI guiBuilder}) {
    try {
      final button = guiBuilder.buildButton();
      button.setTitle('Connect');
      button.show();
    } on HandleException catch (error) {
      debugPrint('Error [create button]: ${error.description}');
    }
  }
}
