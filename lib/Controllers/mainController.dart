import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';

class Product {
  late String name;
  late int quantity;
  late double price;
  RxInt selected = 0.obs;

  Product(this.name, this.quantity, this.price);
}

class User {
  late String nombre;
  late Color color;
  late List<Product> cart = [];
  late int total = 0;

  User(this.nombre, this.color);
}

class MainController extends GetxController {
  User usuario = User("", Colors.black);

  late List<Product> totalProducts = [
    Product("Empanada carne", 20, 30),
    Product("Empanada JyQ", 10, 25),
    Product("Empanada pollo", 5, 10),
    Product("Empanada humita", 3, 15),
  ];
}
