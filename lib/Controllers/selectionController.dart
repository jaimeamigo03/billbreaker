import 'package:get/get.dart';

class Product {
  late int id;
  late String name;
  late int quantity;
  late double price;
  late int remaining;

  Product(this.id, this.name, this.quantity, this.price, this.remaining);
}

class CartController extends GetxController {
  late List<Product> cart = [
    Product(0, "Empanada de carne", 20, 30, 20),
    Product(1, "Empanada de jamon y queso", 10, 25, 10),
    Product(2, "Empanada de pollo", 5, 10, 10),
  ];

  void addProduct(Product product) {
    if (product.remaining < product.quantity) {
      product.remaining++;
    }
  }

  void removeProduct(Product product) {
    if (product.remaining > 0) {
      product.remaining--;
    }
  }
}
