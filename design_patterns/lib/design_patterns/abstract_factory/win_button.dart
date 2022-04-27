import 'package:design_patterns/design_patterns/abstract_factory/view.dart';
import 'package:flutter/material.dart';

class WinButton implements View {
  String _title;

  @override
  void setTitle(String title) {
    this._title = title;
  }

  @override
  void show() {
    debugPrint('Showing Windows style button [Title: $_title]');
  }
}
