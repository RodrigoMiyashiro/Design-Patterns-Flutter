import 'package:design_patterns/design_patterns/builder/model/meat.dart';
import 'package:design_patterns/design_patterns/builder/model/sauces.dart';
import 'package:design_patterns/design_patterns/builder/model/toppings.dart';

import '../../../extensions/extension_object.dart';

class Hamburger {
  final Meat meat;
  final Sauces sauces;
  final Toppings toppings;

  Hamburger({this.meat, this.sauces, this.toppings});

  @override
  String toString() {
    return 'Here is your Hamburger. It is has ${meat.inString} as meat; ${sauces.toString()} as sauce; and ${toppings.toString()} as toppings in it. Bon appetit!';
  }
}
