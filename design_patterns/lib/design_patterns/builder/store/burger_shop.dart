import 'package:design_patterns/design_patterns/builder/build/hamburger_builder.dart';
import 'package:design_patterns/design_patterns/builder/model/hamburger.dart';
import 'package:design_patterns/design_patterns/builder/model/meat.dart';
import 'package:design_patterns/design_patterns/builder/model/sauce.dart';
import 'package:design_patterns/design_patterns/builder/model/topping.dart';
import 'package:design_patterns/design_patterns/builder/store/burger_shop_builder.dart';
import 'package:flutter/material.dart';

class BurgerShop implements BurgerShopBuilder {
  @override
  Hamburger createCheeseBurger({@required HamburgerBuilder hamburgerBuilder}) {
    hamburgerBuilder.setMeat(Meat.beef);
    hamburgerBuilder.addSauce(Sauce.barbecue);
    hamburgerBuilder.addTopping(Topping.onion);

    return hamburgerBuilder.build;
  }

  @override
  Hamburger createVegetarianBurger(
      {@required HamburgerBuilder hamburgerBuilder}) {
    hamburgerBuilder.addSauce(Sauce.ketchup);
    hamburgerBuilder.addTopping(Topping.pickles);

    return hamburgerBuilder.build;
  }
}
