import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:billbreaker/firebase_options.dart';
import 'package:billbreaker/main.dart';

import '../Screens/confirmationScreen.dart';
import '../Screens/finalScreen.dart';

class Product {
  late String name;
  late int quantity;
  late double price;
  RxInt selected = 0.obs;

  Product(this.name, this.quantity, this.price);

  toJson() {
    return {
      "nombre": name,
      "seleccionados": selected.toInt(),
      "precio": price,
    };
  }
}

class User {
  late String nombre;
  late Color color;
  late List<Product> cart = [];
  late int total = 0;

  User(this.nombre, this.color);

  toJson() {
    return {
      "nombre": nombre,
      "cart": cart,
      "total": total,
    };
  }
}

final db = FirebaseFirestore.instance;
final carrito = db.collection("carrito");
final usuarios = db.collection("usuarios");

class MainController extends GetxController {
  User usuario = User("", Colors.black);
  List<Product> totalProducts = [
    Product("Empanada JyQ", 25, 10),
    Product("Empanada carne", 30, 20),
    Product("Empanada humita", 3, 15),
    Product("Empanada pollo", 5, 10)
  ];

  createUser(User usuario) async {
    final List<Map<String, dynamic>> newCart = [];

    for (int i = 0; i < usuario.cart.length; i++) {
      newCart.add(usuario.cart[i].toJson());
    }
    final usuarioFinal = <String, dynamic>{
      "name": usuario.nombre,
      "carrito": newCart,
      "total": usuario.total.toInt(),
    };
    await db.collection("usuarios").add(usuarioFinal);
    Get.to(FinalScreen());
  }

  Future<void> restaurantUpdater() async {
    for (int i = 0; i < totalProducts.length; i++) {
      final docRef = FirebaseFirestore.instance
          .collection('carrito')
          .doc(totalProducts[i].name);
      final docSnapshot = await docRef.get();
      if (docSnapshot.exists) {
        totalProducts[i].selected.value = docSnapshot.data()!['selected'];
      }
    }
  }
}
