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
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
    Product(0, "Papas Fritas", 10, 10, 10),
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
