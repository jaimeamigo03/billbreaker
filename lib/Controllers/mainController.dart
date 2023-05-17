import 'dart:ui';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class User {
  late String name;
  late Color color;
  late List<Product> cart;

  User(this.name, this.color, this.cart);
}

class MainController extends GetxController {}
