import 'package:billbreaker/Controllers/confirmationController.dart';
import 'package:billbreaker/Screens/homeScreen.dart';
import 'package:billbreaker/Controllers/homeController.dart';
import 'package:billbreaker/Controllers/selectionController.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:billbreaker/Controllers/mainController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';


Future<void> main() async{
  Get.put(MainController());
  Get.put(HomeController());
  Get.put(CartController());
  Get.put(ConfirmationController());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, title: 'Home', home: HomeScreen());
  }
}
