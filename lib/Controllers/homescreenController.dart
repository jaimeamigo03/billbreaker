import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User {
  late String Apodo;
  late Color color;

  User(this.Apodo, this.color);
}

class HomeController extends GetxController {
  var Apodo = ''.obs;
  var Color = Colors.black.obs;
}
