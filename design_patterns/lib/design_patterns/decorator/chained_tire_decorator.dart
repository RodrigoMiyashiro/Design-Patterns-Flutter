import 'package:design_patterns/design_patterns/decorator/transporting.dart';

class ChainedTireDecorator implements Transporting {
  final Transporting _transporting;

  ChainedTireDecorator({Transporting transporting})
      : _transporting = transporting;

  @override
  double getSpeed() {
    if (_transporting == null) return 0.0;

    return _transporting.getSpeed() - 1.0;
  }

  @override
  double getTraction() {
    if (_transporting == null) return 0.0;

    return _transporting.getTraction() * 1.1;
  }
}
