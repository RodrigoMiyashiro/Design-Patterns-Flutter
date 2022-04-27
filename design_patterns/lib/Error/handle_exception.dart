abstract class HandleException implements Exception {
  String description;

  @override
  String toString() {
    return description;
  }
}
