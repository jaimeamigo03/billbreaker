import 'package:get/get.dart';
import 'homescreenController.dart';

class Product {
  late String name;
  late int quantity;
  late double price;
  late int remaining;
  RxInt selected = 0.obs;

  Product(this.name, this.quantity, this.price, this.remaining);
}

class CartController extends GetxController {
  final HomeController _homeController = Get.find();

  late List<Product> cart = [
    Product("Empanada de carne", 20, 30, 20),
    Product("Empanada de JyQ", 10, 25, 10),
    Product("Empanada de pollo", 5, 10, 5),
  ];

  void addProduct(Product product) {
    if (product.selected < product.quantity) {
      product.remaining++;
      product.selected++;
    }
  }

  void removeProduct(Product product) {
    if (product.selected > 0) {
      product.remaining--;
      product.selected--;
    }
  }
}
