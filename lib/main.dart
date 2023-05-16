import 'package:billbreaker/Screens/homescreen.dart';
import 'package:billbreaker/Controllers/homescreenController.dart';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(HomeController());
  Get.put(CartController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, title: 'Home', home: HomeScreen());
  }
}
