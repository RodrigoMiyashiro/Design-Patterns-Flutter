import 'package:design_patterns/design_patterns/abstract_factory/view.dart';
import 'package:flutter/material.dart';

class OSXButton implements View {
  String _title;

  @override
  void setTitle(String title) {
    this._title = title;
  }

  @override
  void show() {
    debugPrint('Showing OS X style button [Title: $_title]');
  }
}
