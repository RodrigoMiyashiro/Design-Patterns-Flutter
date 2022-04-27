import 'package:design_patterns/design_patterns/strategy/model/context.dart';
import 'package:design_patterns/design_patterns/strategy/model/content.dart';
import 'package:design_patterns/design_patterns/strategy/player/playable.dart';
import 'package:flutter/material.dart';
import '../../../extensions/extension_object.dart';

class WebViewPlayer implements Playable {
  @override
  Content content;

  WebViewPlayer({this.content});

  @override
  void execute({@required Context context}) {
    if (content == null) return;

    debugPrint(
        '[STRATEGY] WebViewPlayer execute: ${content.type.inString} - ${content.name}');
  }
}
