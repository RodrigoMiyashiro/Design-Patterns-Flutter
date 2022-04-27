import 'package:design_patterns/design_patterns/builder/model/hamburger.dart';
import 'package:design_patterns/design_patterns/builder/model/meat.dart';
import 'package:design_patterns/design_patterns/builder/model/sauce.dart';
import 'package:design_patterns/design_patterns/builder/model/sauces.dart';
import 'package:design_patterns/design_patterns/builder/model/topping.dart';
import 'package:design_patterns/design_patterns/builder/model/toppings.dart';

import 'hamburger_buildable.dart';

class HamburgerBuilder implements HamburgerBuildable {
  Meat _meat = Meat.beef;
  Sauces _sauces = Sauces();
  Toppings _toppings = Toppings();

  @override
  void addSauce(Sauce sauce) {
    _sauces.addSauce(sauce);
  }

  @override
  void removeSauce(Sauce sauce) {
    _sauces.removeSauce(sauce);
  }

  @override
  void addTopping(Topping topping) {
    _toppings.addTopping(topping);
  }

  @override
  void removeTopping(Topping topping) {
    _toppings.removeTopping(topping);
  }

  @override
  void setMeat(Meat meat) {
    this._meat = meat;
  }

  @override
  Hamburger get build =>
      Hamburger(meat: _meat, sauces: _sauces, toppings: _toppings);
}
