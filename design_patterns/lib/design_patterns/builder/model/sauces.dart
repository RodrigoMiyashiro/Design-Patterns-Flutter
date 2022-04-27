import 'package:design_patterns/design_patterns/builder/model/sauce.dart';
import '../../../extensions/extension_list.dart';

class Sauces {
  final List<Sauce> _sauces = List<Sauce>();

  void addSauce(Sauce sauce) {
    _sauces.add(sauce);
  }

  void removeSauce(Sauce sauce) {
    _sauces.remove(sauce);
  }

  @override
  String toString() {
    return _sauces.description();
  }
}
