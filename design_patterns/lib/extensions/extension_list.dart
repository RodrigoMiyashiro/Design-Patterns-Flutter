import 'package:flutter/foundation.dart';

extension ExtensionList on List {
  String description() {
    final convertedToListString = this.listEnumToListString();

    return convertedToListString.join(', ');
  }

  List<String> listEnumToListString() {
    List<String> result = List<String>();

    this.forEach((element) {
      result.add(describeEnum(element));
    });

    return result;
  }
}
