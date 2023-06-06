import 'package:billbreaker/Controllers/confirmationController.dart';
import 'package:billbreaker/Screens/homeScreen.dart';
import 'package:billbreaker/Controllers/homeController.dart';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:billbreaker/Controllers/mainController.dart';

void main() {
  Get.put(MainController());
  Get.put(HomeController());
  Get.put(CartController());
  Get.put(ConfirmationController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, title: 'Home', home: HomeScreen());
  }
}
