import 'dart:ffi';

import 'package:design_patterns/design_patterns/decorator/transporting.dart';

class TireDecorator implements Transporting {
  final Transporting _transporting;

  TireDecorator({Transporting transporting}) : _transporting = transporting;

  @override
  double getSpeed() {
    if (_transporting == null) return 0.0;

    return _transporting.getSpeed();
  }

  @override
  double getTraction() {
    if (_transporting == null) return 0.0;

    return _transporting.getTraction();
  }
}
