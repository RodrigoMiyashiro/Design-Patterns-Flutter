import 'package:design_patterns/design_patterns/builder/model/hamburger.dart';
import 'package:design_patterns/design_patterns/builder/build/hamburger_builder.dart';
import 'package:flutter/material.dart';

abstract class BurgerShopBuilder {
  Hamburger createCheeseBurger({@required HamburgerBuilder hamburgerBuilder});

  Hamburger createVegetarianBurger(
      {@required HamburgerBuilder hamburgerBuilder});
}
