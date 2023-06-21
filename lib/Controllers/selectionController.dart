import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'mainController.dart';

class CartController extends GetxController {
  final MainController _mainController = Get.find();

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

  Future<void> addProduct(Product product) async {
    if (product.selected < product.quantity) {
      product.selected++;
      cartUpdater(product);

      final docRef =
          FirebaseFirestore.instance.collection('carrito').doc(product.name);
      final docSnapshot = await docRef.get();

      if (docSnapshot.exists) {
        final seleccionados =
            docSnapshot.data()!['selected'] + 1;
        db.collection('carrito').doc(product.name).update({
          'selected': seleccionados.toInt(),
        });
        _mainController.usuario.total =
            _mainController.usuario.total + product.price.toInt();
      }
    }
  }

  Future<void> removeProduct(Product product) async {
    if (product.selected > 0) {
      product.selected--;
      cartUpdater(product);

      final docRef =
          FirebaseFirestore.instance.collection('carrito').doc(product.name);
      final docSnapshot = await docRef.get();

      if (docSnapshot.exists) {
        final seleccionados =
            docSnapshot.data()!['selected'] - 1;
        db.collection('carrito').doc(product.name).update({
          'selected': seleccionados.toInt(),
        });
        _mainController.usuario.total =
            _mainController.usuario.total - product.price.toInt();
      }
    }
  }
}
