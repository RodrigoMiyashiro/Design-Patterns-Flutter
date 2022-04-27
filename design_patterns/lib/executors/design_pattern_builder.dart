import 'package:design_patterns/design_patterns/builder/build/hamburger_builder.dart';
import 'package:design_patterns/design_patterns/builder/model/meat.dart';
import 'package:design_patterns/design_patterns/builder/model/sauce.dart';
import 'package:design_patterns/design_patterns/builder/model/topping.dart';
import 'package:design_patterns/design_patterns/builder/store/burger_shop.dart';
import 'package:design_patterns/design_patterns/builder/store/pirate_burger_shop.dart';
import 'package:flutter/foundation.dart';

class DesignPatternBuilder {
  void execute() {
    _builderOne();
    _builderTwo();
    _buildTwoPirate();
  }

  void _builderOne() {
    final customBurgerBuilder = HamburgerBuilder();
    customBurgerBuilder.setMeat(Meat.chicken);

    customBurgerBuilder.addSauce(Sauce.barbecue);
    customBurgerBuilder.addSauce(Sauce.mayonnaise);

    customBurgerBuilder.addTopping(Topping.onion);
    customBurgerBuilder.addTopping(Topping.cheese);
    customBurgerBuilder.addTopping(Topping.pickles);

    customBurgerBuilder.removeSauce(Sauce.barbecue);

    customBurgerBuilder.removeTopping(Topping.pickles);

    customBurgerBuilder.addTopping(Topping.tomatoes);

    final result = customBurgerBuilder.build;
    debugPrint('-->> [BUILDER] Custom Burger: ${result.toString()}');
  }

  void _builderTwo() {
    final burgerShop = BurgerShop();
    final hamburgerBuilderForShop = HamburgerBuilder();
    final cheeseBurger = burgerShop.createCheeseBurger(
        hamburgerBuilder: hamburgerBuilderForShop);
    debugPrint('-->> [BUILDER]Shop - cheeseBurger: ${cheeseBurger.toString()}');

    final vegeBurger = burgerShop.createVegetarianBurger(
        hamburgerBuilder: hamburgerBuilderForShop);
    debugPrint('-->> [BUILDER]Shop - vegeBurger: ${vegeBurger.toString()}');
  }

  void _buildTwoPirate() {
    final pirateBurgerShop = PirateBurgerShop();
    final hamburgerBuilder = HamburgerBuilder();

    final cheeseBurger =
        pirateBurgerShop.createCheeseBurger(hamburgerBuilder: hamburgerBuilder);
    debugPrint(
        '-->> [BUILDER]Shop - cheeseBurger(pirate): ${cheeseBurger.toString()}');

    final vegeBurger = pirateBurgerShop.createVegetarianBurger(
        hamburgerBuilder: hamburgerBuilder);
    debugPrint(
        '-->> [BUILDER]Shop - vegeBurger(pirate): ${vegeBurger.toString()}');
  }
}
