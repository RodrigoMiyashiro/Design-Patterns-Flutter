import 'package:design_patterns/design_patterns/builder/store/burger_shop.dart';
import 'package:design_patterns/design_patterns/builder/store/burger_shop_builder.dart';
import 'package:design_patterns/design_patterns/builder/build/hamburger_builder.dart';
import 'package:design_patterns/design_patterns/builder/model/hamburger.dart';

class PirateBurgerShop implements BurgerShopBuilder {
  @override
  Hamburger createCheeseBurger({HamburgerBuilder hamburgerBuilder}) {
    return BurgerShop().createCheeseBurger(hamburgerBuilder: hamburgerBuilder);
  }

  @override
  Hamburger createVegetarianBurger({HamburgerBuilder hamburgerBuilder}) {
    return BurgerShop()
        .createVegetarianBurger(hamburgerBuilder: hamburgerBuilder);
  }
}
