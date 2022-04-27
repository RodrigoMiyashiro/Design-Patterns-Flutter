import 'package:design_patterns/design_patterns/builder/model/hamburger.dart';
import 'package:design_patterns/design_patterns/builder/model/meat.dart';
import 'package:design_patterns/design_patterns/builder/model/sauce.dart';
import 'package:design_patterns/design_patterns/builder/model/topping.dart';

abstract class HamburgerBuildable {
  void addSauce(Sauce sauces);
  void removeSauce(Sauce sauce);
  void addTopping(Topping topping);
  void removeTopping(Topping topping);
  void setMeat(Meat meat);

  Hamburger get build;
}
