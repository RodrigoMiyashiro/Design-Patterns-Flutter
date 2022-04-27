import 'dart:ffi';

import 'package:design_patterns/design_patterns/decorator/transporting.dart';

class RaceCar implements Transporting {
  final _speed = 10.0;
  final _traction = 10.0;
  @override
  double getSpeed() {
    return _speed;
  }

  @override
  double getTraction() {
    return _traction;
  }
}
