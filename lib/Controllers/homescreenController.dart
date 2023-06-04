import 'dart:ui';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User {
  late String Apodo;
  late Color color;
  late List<Product> cart;

  User(this.Apodo, this.color, this.cart);
}

class HomeController extends GetxController {
  //User Usuario = Usuario(''.obs, Colors.black.obs, [].obs);
  var Apodo = ''.obs;
  var Color = Colors.black.obs;
  var Carrito = [];
}
