import 'package:flutter/foundation.dart';

extension ExtensionObject on Object {
  /// Returns a short description of an enum value.
  ///
  /// Strips off the enum class name from the `enumEntry.toString()`.
  ///
  /// {@tool snippet}
  ///
  /// ```dart
  /// enum Day {
  ///   monday, tuesday, wednesday, thursday, friday, saturday, sunday
  /// }
  ///
  /// void validateDescribeEnum() {
  ///   assert(Day.monday.toString() == 'Day.monday');
  ///   assert(Day.monday.inString == 'monday');
  /// }
  /// ```
  /// {@end-tool}
  String get inString => describeEnum(this);
}
