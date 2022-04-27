import 'package:design_patterns/design_patterns/builder/model/topping.dart';
import '../../../extensions/extension_list.dart';

class Toppings {
  final List<Topping> _toppings = List<Topping>();

  void addTopping(Topping topping) {
    _toppings.add(topping);
  }

  void removeTopping(Topping topping) {
    _toppings.remove(topping);
  }

  @override
  String toString() {
    return _toppings.description();
  }
}
