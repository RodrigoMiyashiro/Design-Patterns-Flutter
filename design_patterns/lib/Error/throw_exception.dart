import 'package:design_patterns/Error/handle_exception.dart';

class ThrowException implements HandleException {
  @override
  String description;

  ThrowException({this.description});
}
