import 'package:get/get.dart';
import 'mainController.dart';

class CartController extends GetxController {
  final MainController _mainController = Get.find();

  void addProduct(Product product) {
    if (product.selected < product.quantity) {
      product.selected++;
      cartUpdater(product);
      _mainController.usuario.total =
          _mainController.usuario.total + product.price.toInt();
    }
  }

  void removeProduct(Product product) {
    if (product.selected > 0) {
      product.selected--;
      cartUpdater(product);
      _mainController.usuario.total =
          _mainController.usuario.total - product.price.toInt();
    }
  }

  void cartUpdater(Product product) {
    bool res = false;
    for (int i = 0; i < _mainController.usuario.cart.length; i++) {
      if (product.name == _mainController.usuario.cart[i].name) {
        res = true;
        if (product.selected == 0) {
          _mainController.usuario.cart.remove(product);
        }
      }
    }

    if (!res) {
      _mainController.usuario.cart.add(product);
    }
  }
}
