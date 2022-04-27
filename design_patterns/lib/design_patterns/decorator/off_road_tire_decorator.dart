import 'package:design_patterns/design_patterns/decorator/transporting.dart';

class OffRoadTireDecorator implements Transporting {
  final Transporting _transporting;

  OffRoadTireDecorator({Transporting transporting})
      : _transporting = transporting;

  @override
  double getSpeed() {
    if (_transporting == null) return 0.0;

    return _transporting.getSpeed() - 3.0;
  }

  @override
  double getTraction() {
    if (_transporting == null) return 0.0;

    return _transporting.getTraction() + 3.0;
  }
}
