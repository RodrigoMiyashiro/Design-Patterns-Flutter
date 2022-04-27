import 'package:design_patterns/design_patterns/decorator/chained_tire_decorator.dart';
import 'package:design_patterns/design_patterns/decorator/off_road_tire_decorator.dart';
import 'package:design_patterns/design_patterns/decorator/race_car.dart';
import 'package:flutter/material.dart';

class DesignPatternDecorator {
  void execute() {
    final defaultRaceCar = RaceCar();
    debugPrint(
        '[DECORATOR] Current Speed (defaultRaceCar): ${defaultRaceCar.getSpeed().toString()}'); // 10
    debugPrint(
        '[DECORATOR] Current Traction (defaultRaceCar): ${defaultRaceCar.getTraction().toString()}'); // 10

    final offRoadRaceCar = OffRoadTireDecorator(transporting: defaultRaceCar);
    debugPrint(
        '[DECORATOR] Current Speed (offRoadRaceCar): ${offRoadRaceCar.getSpeed().toString()}'); // 7
    debugPrint(
        '[DECORATOR] Current Traction (offRoadRaceCar): ${offRoadRaceCar.getTraction().toString()}'); // 13

    final chainedTiresRaceCar =
        ChainedTireDecorator(transporting: offRoadRaceCar);
    debugPrint(
        '[DECORATOR] Current Speed (chainedTiresRaceCar): ${chainedTiresRaceCar.getSpeed().toString()}'); // 6
    debugPrint(
        '[DECORATOR] Current Traction (chainedTiresRaceCar): ${chainedTiresRaceCar.getTraction().toString()}'); // 14.3
  }
}
