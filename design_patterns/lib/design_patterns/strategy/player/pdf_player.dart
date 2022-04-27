import 'package:design_patterns/design_patterns/strategy/model/context.dart';
import 'package:design_patterns/design_patterns/strategy/model/content.dart';
import 'package:design_patterns/design_patterns/strategy/player/playable.dart';
import 'package:flutter/material.dart';
import '../../../extensions/extension_object.dart';

class PDFPlayer implements Playable {
  @override
  Content content;

  PDFPlayer({this.content});

  @override
  void execute({@required Context context}) {
    if (content == null) return;

    debugPrint(
        '[STRATEGY] PDFPlayer execute: ${content.type.inString} - ${content.name}');
  }
}
